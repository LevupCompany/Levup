class AddAttachmentImageToPortfolios < ActiveRecord::Migration[5.1]
  def self.up
    change_table :portfolios do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :portfolios, :image
  end
end
