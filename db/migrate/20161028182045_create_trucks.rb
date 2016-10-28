class CreateTrucks < ActiveRecord::Migration[5.0]
  def change
    create_table :trucks do |t|
      t.string :business_name, limit: 60
      t.string :website, limit: 60
      t.string :phone, limit: 60
      t.string :owner_name, limit: 60
      t.string :business_address, limit: 150
      t.string :email, limit: 60
      t.string :current_location

      t.timestamps
    end
  end
end
