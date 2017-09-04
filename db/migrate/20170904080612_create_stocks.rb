class CreateStocks < ActiveRecord::Migration[5.0]
  def up
    create_table :stocks do |t|
      t.string :ticker
      t.string :name
      t.decimal :last_price

      t.timestamps
    end

    def down
    	remove_table :stocks
    end
  end
end
