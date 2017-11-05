class AddAttachmentAvatarToPages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :pages do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :pages, :avatar
  end
end
