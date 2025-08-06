class AddImageUrlToStrategies < ActiveRecord::Migration[8.0]
  def change
    add_column :strategies, :image_url, :string
  end
end
