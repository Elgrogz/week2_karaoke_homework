require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < Minitest::Test
  def setup
    @room1 = Room.new("Cannibal Corpse's Magical Adventure", 5, 10)
    @room2 = Room.new("Hipster Heaven", 8, 15)
    @room3 = Room.new("Washed up 90's ravin' haven", 10, 3)
  end

  def test_can_make_room
    assert_equal(5, @room1.spaces)
    assert_equal("Hipster Heaven", @room2.name)
    assert_equal(3, @room3.entry_cost)
  end

end