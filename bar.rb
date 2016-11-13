require_relative('guest')
require_relative('room')
require_relative('viewer')

class Bar 

  attr_reader :name, :rooms
  attr_accessor :guests_in_bar

  def initialize(name, rooms)
    @name = name
    @rooms = rooms
    @guests_in_bar = []
  end

  def add_guests_to_bar(guests)
    @guests_in_bar << guests
  end

  def number_of_guests
    return @guests_in_bar.count
  end
end
