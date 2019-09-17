require("minitest/autorun")
require("minitest/rg")
require_relative("../Person")
require_relative("../Bus") #is this necessary?

class TestPerson < Minitest::Test

  def setup
    @passenger = Person.new("Geoffrey", 37)
  end

  def test_get_passenger_name
    assert_equal("Geoffrey", @passenger.name())
  end

  def test_get_passenger_age
    assert_equal(37, @passenger.age())
  end
end
