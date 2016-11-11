require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Gregor", 1000)
  end

  def test_can_create_guest
    assert_equal("Gregor", @guest1.name)
  end 
end