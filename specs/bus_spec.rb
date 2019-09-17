require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")

class TestBus < Minitest::Test

  def setup
    @bus1 = Bus.new(23, "Portobello")
    @passenger1 = Person.new("Geoffrey", 37)
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
end
