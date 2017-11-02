class Page < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  def self.matching_title search
  	where("title LIKE ?", "%#{search}%")
  end
end
