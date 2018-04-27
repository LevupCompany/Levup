class AddAttachmentImageToCases < ActiveRecord::Migration[5.1]
  def self.up
    change_table :cases do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cases, :image
  end
end
