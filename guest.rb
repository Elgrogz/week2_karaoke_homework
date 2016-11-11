class Guest

  attr_accessor :money
  attr_reader :name

  def initialize(name, money)
    @name = name
    @money = money
    @fav_song = nil
    @current_room = nil
  end


#necessary or just have in initialize?
  def choose_fav_song
  end

end