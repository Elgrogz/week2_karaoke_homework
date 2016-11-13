require_relative('bar')
require_relative('room')
require_relative('song')
require_relative('guest')

@room1 = Room.new("Cannibal Corpse's Magical Adventure", 2, 10)
@room2 = Room.new("Hipster Heaven", 8, 15)
@room3 = Room.new("Washed up 90's ravin' haven", 10, 20)

@rooms = [@room1, @room2, @room3]

@guest1 = Guest.new("Gregor", 100, "Song 2")
@guest2 = Guest.new("Dave the Rave", 50)
@guest3 = Guest.new("Disco Stu", 75)

@bar1 = Bar.new("El Grogz's Karaoke Bar", @rooms)

@song1 = Song.new("Gravel Pit", "Wu-tang Clan", "Hip Hop")
@song2 = Song.new("Song 2", "Blur", "Britpop")

@bar1.add_guests_to_bar(@guest1)
@bar1.add_guests_to_bar(@guest2)
@bar1.add_guests_to_bar(@guest3)

@room2.add_guest_to_room(@guest1, @bar1, @room2)
@room2.add_guest_to_room(@guest2, @bar1, @room2)



@room2.add_song_to_playlist(@song2)
puts "Welcome to #{@bar1.name}!"
puts "There are #{@bar1.number_of_guests} guests in #{@bar1.name}."
puts "There are #{@room2.guests_in_room} guests in #{@room2.name}."
@room2.play_song(@room2, @song2)
@room2.add_singer(@guest2)
puts "#{@room2.current_singer.name} is on the stage!"
@room2.guest_leaves_room(@guest1, @bar1)
puts "#{@guest1.name} has left #{@room2.name}."
@room1.add_guest_to_room(@guest1, @bar1, @room1)
puts "There are #{@room2.guests_in_room} guests in #{@room2.name}."
puts "There are #{@room1.guests_in_room} guests in #{@room1.name}."
@room1.guest_leaves_room(@guest1, @bar1)
@room3.add_guest_to_room(@guest1, @bar1, @room3)
puts "#{@guest1.name} has £#{@guest1.money}."
puts "#{@guest1.name}'s transaction history: #{@guest1.transaction_history}"




