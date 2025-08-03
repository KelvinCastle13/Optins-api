class RenameTypeColumnInOptionLegs < ActiveRecord::Migration[8.0]
  def change
    rename_column :option_legs, :type, :leg_type
  end
end
