require_relative('song')
require_relative('guest')

class Room
  attr_reader :name, :spaces, :entry_cost

  attr

  def initialize(name, spaces, entry_cost)
    @name = name
    @entry_cost = entry_cost
    @spaces = spaces
    @current_guests = []
    @playlist = []
    @current_song = nil
  end

  def check_available_space
  end

  def add_guest_to_room(guest)
    #includes add to array and deducts money from guest
  end

  def guest_leaves_room(guest)
  end

  def add_song_to_playlist(song)
  end

  def play_song(song)
  end

end