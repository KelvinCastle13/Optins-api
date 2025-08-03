class RenameOptionActionColumnInOptionLegs < ActiveRecord::Migration[8.0]
  def change
    rename_column :option_legs,  :option_action, :leg_action
  end
end
