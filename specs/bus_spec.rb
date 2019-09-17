require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")

class TestBus < Minitest::Test

  def setup
    @bus1 = Bus.new(23, "Portobello")
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

end
