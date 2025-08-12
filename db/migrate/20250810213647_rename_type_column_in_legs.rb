class RenameTypeColumnInLegs < ActiveRecord::Migration[8.0]
  def change
    rename_column :legs, :type, :leg_type
  end
end
