class Bus

  attr_reader(:route_number, :destination)

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive_bus()
    return "Spicy Brum Brum"
  end

  def passenger_count()
    return @passengers.length() # or .count() / .size()
  end

  def add_passenger(new_passenger)
    @passengers.push(new_passenger)
  end

  def remove_passenger(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus()
    @passengers = []
  end

end
