class RenameStrategtryNameToStrategyName < ActiveRecord::Migration[8.0]
  def change
    rename_column :trades, :stratrgy_name, :strategy_name
  end
end
