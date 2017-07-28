class AddPetsToCalculation < ActiveRecord::Migration[5.0]
  def change
    add_column :calculations, :passengers_pet, :integer
  end
end
