class Page < ApplicationRecord
  belongs_to :user

  has_attached_file :avatar, styles: { large: "600x600>", medium: "300x300>", thumb: "50x50>" }, default_url: "/images/:style/brak-obrazka.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :title, use: :slugged

  def self.matching_title search
  	where("title LIKE ?", "%#{search}%")
  end
end
