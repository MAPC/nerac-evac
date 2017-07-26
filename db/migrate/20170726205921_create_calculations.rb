class CreateCalculations < ActiveRecord::Migration[5.0]
  def change
    create_table :calculations do |t|
      t.integer :passengers_mobile
      t.integer :passengers_injured_bedridden
      t.integer :passengers_wheelchair_bound
      t.float :shelter_distance
      t.float :target_completion_time

      t.timestamps
    end
  end
end
