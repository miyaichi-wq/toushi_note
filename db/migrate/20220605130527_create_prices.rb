class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.date :date, null: false
      t.float :price, null: false

      t.timestamps
    end
    add_index :prices, :date
  end
end
