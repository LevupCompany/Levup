class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :name
      t.belongs_to :SubBlog, index: true
      t.text :annotation
      t.numeric :tag
      t.text :description
      t.timestamps
    end
  end
end
