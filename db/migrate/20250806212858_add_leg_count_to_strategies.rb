class AddLegCountToStrategies < ActiveRecord::Migration[8.0]
  def change
    add_column :strategies, :leg_count, :integer
  end
end
