class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :page do |t|
      t.string :page_title
      t.text :description
      t.text :keywords
      t.timestamps
    end
  end
end
