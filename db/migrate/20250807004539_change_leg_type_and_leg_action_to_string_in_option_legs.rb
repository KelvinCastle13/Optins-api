class ChangeLegTypeAndLegActionToStringInOptionLegs < ActiveRecord::Migration[8.0]
  def change
    change_column :option_legs, :leg_type, :string
    change_column :option_legs, :leg_action, :string
  end
end
