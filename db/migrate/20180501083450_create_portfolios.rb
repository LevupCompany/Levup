class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.numeric :tag
      t.numeric :annotation
      t.timestamps
    end
  end
end
