require_relative('song')
require_relative('guest')
require_relative('bar')
require('pry-byebug')

class Room
  attr_reader :name, :spaces, :entry_cost

  attr_accessor :current_guests, :playlist, :current_song

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

#not needed now but maybe to add insufficient funds message later?
  # def check_customer_funds(guest, room)
  #   funds_available = guest.money - room.entry_cost
  #   if funds_available > 0
  #     enough_funds = true
  #   else
  #     enough_funds = false
  #   end
  #   return enough_funds
  # end

  def add_guest_to_room(guest, bar, room)
    if check_available_space > 0 && guest.money > room.entry_cost
      @current_guests << bar.guests_in_bar.delete(guest)
      guest.money -= @entry_cost
    end
  end

  def guests_in_room
    return @current_guests.count
  end

  def guest_leaves_room(guest, bar)
    bar.guests_in_bar << @current_guests.delete(guest)
  end

  def add_song_to_playlist(song)
    playlist << song
  end

  def play_song(song)
    if playlist.include?(song)
      @current_song = song
    else 
      puts "Playlist does not contain song"
    end
  end

  def current_singer(guest)
    
  end

end