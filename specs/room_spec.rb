require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../bar')

class TestRoom < Minitest::Test
  def setup
    @room1 = Room.new("Cannibal Corpse's Magical Adventure", 5, 10)
    @room2 = Room.new("Hipster Heaven", 2, 15)
    @room3 = Room.new("Washed up 90's ravin' haven", 10, 3)

    @rooms = [@room1, @room2, @room3]

    @guest1 = Guest.new("Gregor", 100)
    @guest2 = Guest.new("Dave the Rave", 50)
    @guest3 = Guest.new("Disco Stu", 20)

    @bar1 = Bar.new("El Grogz's Karaoke Bar", @rooms)

    @song1 = Song.new("Gravel Pit", "Wu-tang Clan", "Hip Hop")
    @song2 = Song.new("Song 2", "Blur", "Britpop")
  end

  # def test_can_make_room
  #   assert_equal(5, @room1.spaces)
  #   assert_equal("Hipster Heaven", @room2.name)
  #   assert_equal(3, @room3.entry_cost)
  # end

  # def test_add_guest_to_room
  #   @bar1.add_guests_to_bar(@guest1)
  #   @bar1.add_guests_to_bar(@guest2)
  #   @bar1.add_guests_to_bar(@guest3)
  #   assert_equal(3, @bar1.number_of_guests)

  #   @room2.add_guest_to_room(@guest1, @bar1)
  #   assert_equal(1, @room2.guests_in_room)
  #   assert_equal(85, @guest1.money)
  #   assert_equal(2, @bar1.number_of_guests)
  # end

  

  # def test_check_available_space__space_available
  #   @bar1.add_guests_to_bar(@guest1)
  #   @bar1.add_guests_to_bar(@guest2)
  #   @bar1.add_guests_to_bar(@guest3)

  #   @room2.add_guest_to_room(@guest1, @bar1)
  #   assert_equal(1, @room2.check_available_space)
  #   @room2.add_guest_to_room(@guest2, @bar1)
  #   assert_equal(0, @room2.check_available_space)
  #   @room2.add_guest_to_room(@guest3, @bar1)
  #   assert_equal(0, @room2.check_available_space)
  #   assert_equal(2, @room2.guests_in_room)

  # # end

  # def test_guest_can_leave_room
  #   @bar1.add_guests_to_bar(@guest1)
  #   @bar1.add_guests_to_bar(@guest2)
  #   @bar1.add_guests_to_bar(@guest3)

  #   @room2.add_guest_to_room(@guest1, @bar1)
  #   assert_equal(1, @room2.check_available_space)
  #   @room2.add_guest_to_room(@guest2, @bar1)
  #   assert_equal(0, @room2.check_available_space)
  #   assert_equal(2, @room2.guests_in_room)
  #   @room2.guest_leaves_room(@guest1, @bar1)
  #   assert_equal(1, @room2.guests_in_room)
  #   assert_equal(2, @bar1.number_of_guests)
  # end

  # def test_add_song_to_playlist
  #   @room1.add_song_to_playlist(@song2)
  #   assert_equal(1, @room1.playlist.count)
  # end

  def test_can_play_song
    @room1.add_song_to_playlist(@song2)
    @room1.play_song(@song2)
    assert_equal("Song 2", @room1.current_song.name)
  end
end

