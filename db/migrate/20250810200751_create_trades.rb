class CreateTrades < ActiveRecord::Migration[8.0]
  def change
    create_table :trades do |t|
      t.string :stock_name
      t.string :stratrgy_name
      t.string :profit_loss

      t.timestamps
    end
  end
end
