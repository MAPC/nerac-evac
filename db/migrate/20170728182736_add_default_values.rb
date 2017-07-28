class AddDefaultValues < ActiveRecord::Migration[5.0]
  def change
    change_column :calculations, :passengers_mobile, :integer, default: 0
    change_column :calculations, :passengers_injured_bedridden, :integer, default: 0
    change_column :calculations, :passengers_wheelchair_bound, :integer, default: 0
    change_column :calculations, :passengers_pet, :integer, default: 0
  end
end
