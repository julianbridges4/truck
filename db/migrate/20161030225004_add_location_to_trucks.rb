class AddLocationToTrucks < ActiveRecord::Migration[5.0]
  def change
    add_column :trucks, :location, :string
  end
end
