class Bar 

  attr_reader :name, :rooms
  attr_accessor :guests

  def initialize(name, rooms)
    @name = name
    @rooms = rooms
    @guest_list = []
  end

  def add_guests(guests)
    @guest_list << guests
  end

  def number_of_guests
    return @guest_list.length
  end

  
end