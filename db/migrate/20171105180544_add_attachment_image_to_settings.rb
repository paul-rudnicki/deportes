class AddAttachmentImageToSettings < ActiveRecord::Migration[5.1]
  def self.up
    change_table :settings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :settings, :image
  end
end
