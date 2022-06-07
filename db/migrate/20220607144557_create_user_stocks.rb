class CreateUserStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_stocks do |t|
      t.integer :volume, null: false
      t.float :price, null: false
      t.references :user, null: false, foreign_key: true
      t.references :stock, null: false, foreign_key: true

      t.timestamps
      t.index [:user_id, :stock_id], unique: true
    end
  end
end
