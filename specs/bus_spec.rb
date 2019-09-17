require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")
require_relative("../BusStop")

class TestBus < Minitest::Test

  def setup
    @bus1 = Bus.new(23, "Portobello")

    @passenger1 = Person.new("Geoffrey", 37)
    @passenger2 = Person.new("Hodor", 45)

    @passengers = [@passenger1, @passenger2]

    @stop1 = BusStop.new("Princes Street")
    @stop2 = BusStop.new("Stockbridge")

  end

  def test_get_route_number
    assert_equal(23, @bus1.route_number)
  end

  def test_get_destination
    assert_equal("Portobello", @bus1.destination)
  end

  def test_drive_bus
    assert_equal("Spicy Brum Brum", @bus1.drive_bus())
  end

  def test_number_of_passengers
    assert_equal(0, @bus1.passenger_count())
  end

  def test_add_passenger_to_bus
    @bus1.add_passenger(@passenger1)
    assert_equal(1, @bus1.passenger_count())
  end

  def test_remove_passengers_from_bus
    @bus1.add_passenger(@passenger1)
    @bus1.add_passenger(@passenger2)
    @bus1.remove_passenger(@passenger1)
    assert_equal(1, @bus1.passenger_count())
  end

  def test_remove_all_passengers
    @bus1.add_passenger(@passenger1)
    @bus1.add_passenger(@passenger2)
    @bus1.empty_bus()
    assert_equal(0, @bus1.passenger_count())
  end

  def test_pick_up_from_stop
    @stop1.add_passenger_to_queue(@passengers)
    @bus1.pick_up_from_stop(@stop1)
    assert_equal(0, @stop1.get_passengers_in_queue().length())
    assert_equal(2, @bus1.passenger_count())
  end

end
