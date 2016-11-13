require_relative('bar')
require_relative('room')
require_relative('song')
require_relative('guest')
require_relative('viewer')

@room1 = Room.new("Cannibal Corpse's Magical Adventure", 2, 10)
@room2 = Room.new("Hipster Heaven", 3, 15)
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



#test run of programme

@room2.add_song_to_playlist(@song2)
puts "Welcome to #{@bar1.name}!"
@room2.add_guest_to_room(@guest1, @bar1, @room2)
@room2.add_guest_to_room(@guest2, @bar1, @room2)
puts "There are #{@bar1.number_of_guests} guests in #{@bar1.name}."
puts "There are #{@room2.guests_in_room} guests in #{@room2.name}."
@room2.play_song(@room2, @song2)
@room2.add_singer(@room2, @guest2)
@room2.guest_leaves_room(@guest1, @bar1, @room1)
@room1.add_guest_to_room(@guest1, @bar1, @room1)
puts "There are #{@room2.guests_in_room} guests in #{@room2.name}."
puts "There are #{@room1.guests_in_room} guests in #{@room1.name}."
@room1.guest_leaves_room(@guest1, @bar1, @room1)
@room3.add_guest_to_room(@guest1, @bar1, @room3)
puts "#{@guest1.name} has £#{@guest1.money}."
puts "#{@guest2.name} has £#{@guest2.money}."
puts "#{@guest1.name}'s transaction history: #{@guest1.transaction_history}"
puts "#{@guest2.name}'s transaction history: #{@guest2.transaction_history}"


#i tried to write a viewer file with functions to get updates on customer numbers, money, etc, but I couldnt get it to work with the app (undefined methods)


# @viewer.welcome(@bar1)
# bar_update(@bar1)
# @room2.add_guest_to_room(@guest1, @bar1, @room2)
# @room2.add_guest_to_room(@guest2, @bar1, @room2)
# room_update(@room2)
# @room2.add_song_to_playlist(@song2)
# @room2.play_song(@room2, @song2)
# @room2.add_singer(@room2, @guest2)
# @room2.guest_leaves_room(@guest1, @bar1, @room2)
# @room1.add_guest_to_room(@guest1, @bar1, @room1)
# room_update(@room1)
# room_update(@room2)
# @room1.guest_leaves_room(@guest1, @bar1, @room1)
# @room3.add_guest_to_room(@guest1, @bar1, @room3)
# room_update(@room3)
# guest_funds_update(@guest1)
# guest_funds_update(@guest2)
# guest_transaction_history(@guest1)
# guest_transaction_history(@guest2)




