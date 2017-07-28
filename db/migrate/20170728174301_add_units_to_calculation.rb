class AddUnitsToCalculation < ActiveRecord::Migration[5.0]
  def change
    add_column :calculations, :distance_in_time, :boolean
  end
end
