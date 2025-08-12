class AddTradeIdToLegs < ActiveRecord::Migration[8.0]
  def change
    # add_column :legs, :trade_id, :integer
    add_reference :legs, :trade, foreign_key: true, index: true
  end
end
