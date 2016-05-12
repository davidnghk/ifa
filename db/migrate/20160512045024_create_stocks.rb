class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.string :name
      t.decimal :last_price, :precision => 15, :scale => 2
      t.date :pricing_date
      t.decimal :roi, :precision => 15, :scale => 8
      t.decimal :risk, :precision => 15, :scale => 5
      t.decimal :sharpe, :precision => 15, :scale => 5
      t.decimal :alpha, :precision => 15, :scale => 5
      t.integer :parent_id
      t.integer :no_of_prices

      t.timestamps null: false
    end
  end
end
