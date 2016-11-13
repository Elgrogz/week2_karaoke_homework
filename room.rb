require_relative('song')
require_relative('guest')
require_relative('bar')
require_relative('viewer')
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
      puts "This room is currently full."
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
      puts "#{guest.name} has entered the #{room.name} room."
    end
  end

  def guests_in_room
    return @current_guests.count
  end

  def guest_leaves_room(guest, bar, room)
    leaving_guest = @current_guests.delete(guest)
    bar.guests_in_bar << leaving_guest
    puts "#{guest.name} has left #{room.name}."
  end

  def add_song_to_playlist(song)
    playlist << song
  end

  def play_song(room, song)
    if playlist.include?(song)
      @current_song = song
      puts "Now playing: #{room.current_song.name} by #{room.current_song.artist} in #{room.name}."
      fav_song_check(room)
    else 
      puts "Playlist does not contain song."
    end
  end

  def fav_song_check(room)
    guest_fav = []
    room.current_guests.map { |guest| guest_fav.push(guest.name) if guest.fav_song == @current_song.name}
    if guest_fav == []
      return
    else
      puts "#{guest_fav[0]}'s favourite song has come on. #{guest_fav[0]} goes mental!"
    end
  end

  def add_singer(room, guest)
    @current_singer = guest if @current_song != nil
    puts "#{room.current_singer.name} is on the stage!"
  end

end