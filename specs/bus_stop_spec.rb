require("minitest/autorun")
require("minitest/rg")
require_relative("../BusStop")
require_relative("../Person")

class TestBusStop < Minitest::Test

  def setup
    @stop1 = BusStop.new("Princes Street")
    @stop2 = BusStop.new("Stockbridge")

    @passenger1 = Person.new("Geoffrey", 37)
    @passenger2 = Person.new("Hodor", 45)

    @passengers = [@passenger1, @passenger2]

  end

  def test_get_name
    assert_equal("Princes Street", @stop1.stop_name())
  end

  def test_get_number_of_passengers_at_stop()
    assert_equal(0, @stop1.passengers_at_stop())
  end

  def test_add_passenger_to_queue()
    @stop1.add_passenger_to_queue(@passengers)
    assert_equal(2, @stop1.passengers_at_stop())
  end

  def test_get_passengers_in_queue()
    assert_equal(0, @stop1.get_passengers_in_queue().length)
  end

  def test_empty_queue()
    @stop1.add_passenger_to_queue(@passengers)
    @stop1.empty_queue()
    assert_equal(0, @stop1.passengers_at_stop())
  end

end
