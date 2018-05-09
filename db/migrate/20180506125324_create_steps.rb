class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.belongs_to :order, index: true
      t.numeric :status
      t.integer :summa
      t.timestamps
    end
  end
end
