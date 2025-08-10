class CreateLegs < ActiveRecord::Migration[8.0]
  def change
    create_table :legs do |t|
      t.string :type
      t.string :side
      t.date :expiration
      t.integer :strike
      t.integer :strategy_id
      t.integer :contracts

      t.timestamps
    end
  end
end
