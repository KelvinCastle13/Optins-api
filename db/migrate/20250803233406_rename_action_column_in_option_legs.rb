class RenameActionColumnInOptionLegs < ActiveRecord::Migration[8.0]
  def change
    rename_column :option_legs, :action, :option_action
  end
end
