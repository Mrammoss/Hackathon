class CreatePotholes < ActiveRecord::Migration[8.1]
  def change
    create_table :potholes do |t|
      t.text :description
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.string :address
      t.integer :severity

      t.timestamps
    end
  end
end
