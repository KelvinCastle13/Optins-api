class CreateImages < ActiveRecord::Migration[8.0]
  def change
    create_table :images do |t|
      t.string :url
      t.integer :strategy_id

      t.timestamps
    end
  end
end
