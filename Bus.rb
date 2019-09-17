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

  def add_queue(queue)
    for passenger in queue
      add_passenger(passenger)
    end
  end

  def pick_up_from_stop(stop)
    add_queue(stop.get_passengers_in_queue())
    stop.empty_queue()
  end

end
