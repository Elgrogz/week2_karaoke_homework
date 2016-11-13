require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../bar')

class TestBar < Minitest::Test
  def setup
    @room1 = Room.new("Cannibal Corpse's Magical Adventure", 2, 10)
    @room2 = Room.new("Hipster Heaven", 8, 15)
    @room3 = Room.new("Washed up 90's ravin' haven", 10, 3)

    @rooms = [@room1, @room2, @room3]

    @guest1 = Guest.new("Gregor", 1000)
    @guest2 = Guest.new("Dave the Rave", 500)
    @guest3 = Guest.new("Disco Stu", 750)

    # @guests = [@guest1, @guest2, @guest3]

    @bar1 = Bar.new("GG's Karaoke Bar", @rooms)
  end

  def test_can_create_bar
    assert_equal(3, @bar1.rooms.length)

  end 

  def test_can_add_guests
    @bar1.add_guests_to_bar(@guest1)
    @bar1.add_guests_to_bar(@guest2)
    @bar1.add_guests_to_bar(@guest3)
    assert_equal(3, @bar1.number_of_guests)
  end
end