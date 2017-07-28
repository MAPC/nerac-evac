class Calculation < ApplicationRecord
  validates_presence_of :shelter_distance, :target_completion_time

  def bus_vehicles
    capacity = bus_capacity
    load_time_minutes = bus_load_time
    # result = amount of buses needed to transport people in a certain amount of time
    (passengers_mobile.to_f / passengers_transported_in_target_time(capacity, load_time_minutes)).ceil
  end

  def ambulance_vehicles
    capacity = ambulance_capacity
    load_time_minutes = ambulance_load_time
    (passengers_injured_bedridden.to_f / passengers_transported_in_target_time(capacity, load_time_minutes)).ceil
  end

  def paratransit_vehicles
    capacity = paratransit_capacity
    load_time_minutes = paratransit_load_time
    (passengers_wheelchair_bound.to_f / passengers_transported_in_target_time(capacity, load_time_minutes)).ceil
  end

  def pet_vehicles
    capacity = pet_capacity
    load_time_minutes = pet_load_time
    (passengers_pet.to_f / passengers_transported_in_target_time(capacity, load_time_minutes)).ceil
  end

  private

  def passengers_transported_in_target_time(capacity, load_time_minutes)
    capacity * (target_completion_time / round_trip_time(capacity, load_time_minutes, vehicle_speed_mph)).floor
  end

  def round_trip_time(passengers, passenger_load_time, vehicle_speed_mph)
    load_time_minutes = passengers * passenger_load_time
    (load_time_minutes) / 60 + (distance_hours(vehicle_speed_mph) * 2)
  end

  def distance_hours(vehicle_speed_mph)
    if distance_in_time?
      shelter_distance
    else
      shelter_distance / vehicle_speed_mph
    end
  end
end
