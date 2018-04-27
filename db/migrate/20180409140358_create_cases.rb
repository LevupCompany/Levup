class CreateCases < ActiveRecord::Migration[5.1]
  def change
    create_table :cases do |t|
      t.string :name
      t.text :description
      t.text :annotation
      t.numeric :tag
      t.timestamps
    end
  end
end
