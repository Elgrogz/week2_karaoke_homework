require_relative('song')
require_relative('guest')
require_relative('bar')

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
    number_of_spaces = @spaces - @current_guests.count 
    if number_of_spaces <= 0
      space_available = 0
    else space_available = number_of_spaces
    end
    return space_available
  end

  def add_guest_to_room(guest, bar)
   
    if check_available_space > 0
      @current_guests << bar.guests_in_bar.delete(guest)
      guest.money -= @entry_cost
    end
  end

  def guests_in_room
    return @current_guests.count
  end

  def guest_leaves_room(guest)
  end

  def add_song_to_playlist(song)
  end

  def play_song(song)
  end

end