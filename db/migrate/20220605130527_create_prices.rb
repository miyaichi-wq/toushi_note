class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.references :stock, foreign_key: true
      t.date :date, null: false
      t.float :price, null: false

      t.timestamps
    end
    add_index :prices, :date
  end
end
