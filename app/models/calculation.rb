class Calculation < ApplicationRecord
  validates_presence_of :shelter_distance, :target_completion_time

  def bus_vehicles
  end

  def bus_time
  end

  def bus_trips
  end

  def bus(passengers, travel_time, target_time)
    bus_capacity = 30 #people on the bus
    speed_limit = 30 #speed limit in MPH
    congestion_factor = 1
    load_time_in_minutes = 1

    # result = amount of buses needed to transport people in a certain amount of time

    target_time / total_trip_time = bus_trips

    60 minutes / 30 minutes = 2 bus trips

    500 people
    60 minutes target time
    30 minute total travel time

    60/30 = 2 trips per bus
    2 trips * 30 people
    60 people per bus

    500/60 = 8.33 rounds up to 9 buses
  end



  def trips(passengers, target_completion_time, distance_miles, speed_miles_per_hour, passenger_load_time)
    target_completion_time / trip_time(distance_miles, speed_miles_per_hour, passengers, passenger_load_time)
  end

  def trip_time(distance_miles, speed_miles_per_hour, passengers, passenger_load_time)
    # Congestion formula to potentially use in future iterations
    # trip_time * (congestion_factor ^ counter - 1)
    travel_time = distance_miles / speed_miles_per_hour
    load_time = passengers * passenger_load_time
    travel_time + load_time
  end

  def ambulance_vehicles
  end

  def ambulance_time
  end

  def ambulance_trips
  end

  def paratransit_vehicles
  end

  def paratransit_time
  end

  def paratransit_trips
  end

  def pet_vehicles
  end

  def pet_time
  end

  def pet_trips
  end
end
