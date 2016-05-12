class CreateStockPrices < ActiveRecord::Migration
  def change
    create_table :stock_prices do |t|
      t.date :trade_date
      t.decimal :open, :precision => 15, :scale => 2
      t.integer :volume
      t.decimal :high, :precision => 15, :scale => 2
      t.decimal :low, :precision => 15, :scale => 2
      t.decimal :close, :precision => 15, :scale => 2
      t.decimal :adj_close, :precision => 15, :scale => 2
      t.decimal :roi, :precision => 15, :scale => 10
      t.references :stock, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
