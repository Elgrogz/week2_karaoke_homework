require_relative('song')
require_relative('guest')
require_relative('bar')
require('pry-byebug')

class Room
  attr_reader :name, :spaces, :entry_cost

  attr_accessor :current_guests, :playlist, :current_song, :current_singer  

  def initialize(name, spaces, entry_cost)
    @name = name
    @entry_cost = entry_cost
    @spaces = spaces
    @current_guests = []
    @playlist = []
    @current_song = nil
    @current_singer = nil
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
      guest.transaction_history << [room.name, @entry_cost]
    end
  end

  def guests_in_room
    return @current_guests.count
  end

  def guest_leaves_room(guest, bar)
    leaving_guest = @current_guests.delete(guest)
    bar.guests_in_bar << leaving_guest
  end

  def add_song_to_playlist(song)
    playlist << song
  end

  def play_song(room, song)
    if playlist.include?(song)
      @current_song = song
      puts "Now playing: #{room.current_song.name} by #{room.current_song.artist} in #{room.name}."
    else 
      puts "Playlist does not contain song."
    end
    fav_song_check(room)
  end

  def fav_song_check(room)
    result = room.current_guests.any? { |guest| guest.fav_song == room.current_song.name}
      # if room.current_guests.include?(guest) && guest.fav_song == room.current_song.name
      # if result == true
        # puts "#{guest}'s favourite song has come on. #{guest} goes mental!"
      # end 
    return result
  end

  def add_singer(guest)
    @current_singer = guest if @current_song != nil
  end

end