class BusStop

  attr_reader(:stop_name)

  def initialize(stop_name)
    @stop_name = stop_name
    @queue = []
  end

  def passengers_at_stop()
    @queue.length()
  end

  def add_passenger_to_queue(passengers_to_add)
    for passenger in passengers_to_add
      @queue.push(passenger)
    end
  end

  def get_passengers_in_queue()
    return @queue
  end

  def empty_queue()
    @queue = []
  end

end
