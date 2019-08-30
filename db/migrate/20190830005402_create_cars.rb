class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :price
      t.boolean :new
      t.integer :mileage
      t.string :transmission
      t.string :engine
      t.string :drivetrain
      t.string :vin
      t.string :fuel_type
      t.string :body_style
      t.string :ext_color
      t.string :int_color
      t.integer :mpg

      t.timestamps
    end
  end
end
