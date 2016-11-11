require_relative('bar')
require_relative('room')
require_relative('song')
require_relative('guest')

@room1 = Room.new("Cannibal Corpse's Magical Adventure", 2, 10)
@room2 = Room.new("Hipster Heaven", 8, 15)
@room3 = Room.new("Washed up 90's ravin' haven", 10, 3)

@rooms = [@room1, @room2, @room3]

@guest1 = Guest.new("Gregor", 100)
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

@room1.add_song_to_playlist(@song2)

puts "Welcome to #{@bar1.name}!"

@room1.play_song(@song2)

puts "Now playing: #{@room1.current_song.name} by #{@room1.current_song.artist}"


