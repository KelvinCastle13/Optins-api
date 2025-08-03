class CreateOptionLegs < ActiveRecord::Migration[8.0]
  def change
    create_table :option_legs do |t|
      t.references :strategy, null: false, foreign_key: true
      t.boolean :type
      t.boolean :action
      t.string :expiration
      t.string :strike_type
      t.string :strike_value

      t.timestamps
    end
  end
end
