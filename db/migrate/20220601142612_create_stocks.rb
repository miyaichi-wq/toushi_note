class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.integer :category, null: false
      t.string :code, null: false
      t.string :name, null: false
      t.string :url
      t.text :description
      t.string :sector

      t.timestamps
    end

    add_index :stocks, :code, unique: true
  end
end
