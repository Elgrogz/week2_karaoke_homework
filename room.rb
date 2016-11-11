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


end