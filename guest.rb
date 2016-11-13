class Guest

  attr_accessor :money, :transaction_history
  attr_reader :name, :fav_song

  def initialize(name, money, fav_song = nil)
    @name = name
    @money = money
    @fav_song = fav_song 
    @transaction_history = []
  end

end