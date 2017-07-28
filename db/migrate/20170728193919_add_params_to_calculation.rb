class AddParamsToCalculation < ActiveRecord::Migration[5.0]
  def change
    add_column :calculations, :bus_capacity, :integer, default: 30
    add_column :calculations, :ambulance_capacity, :integer, default: 1
    add_column :calculations, :paratransit_capacity, :integer, default: 10
    add_column :calculations, :pet_capacity, :integer, default: 5
    add_column :calculations, :bus_load_time, :integer, default: 1
    add_column :calculations, :ambulance_load_time, :integer, default: 5
    add_column :calculations, :paratransit_load_time, :integer, default: 3
    add_column :calculations, :pet_load_time, :integer, default: 2
    add_column :calculations, :vehicle_speed_mph, :integer, default: 30
  end
end
