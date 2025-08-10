class DropOptionLegsTable < ActiveRecord::Migration[8.0]
  def change
    drop_table :option_legs
  end
end
