class AddIsSoldToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :is_sold, :boolean, default: false
  end
end
