require_relative('bar')
require_relative('room')
require_relative('song')
require_relative('guest')

class Viewer
  def welcome(bar)
   "Welcome to #{bar.name}!"
  end

  def bar_update(bar)
    puts "There are #{@bar.number_of_guests} guests in #{@bar.name}."
  end

  def room_update(room)
    puts "There are #{room.guests_in_room} guests in #{room.name}."
  end

  def guest_funds_update(guest)
    puts "#{guest.name} has £#{guest.money}."
  end

  def guest_transaction_history(guest)
    puts "#{guest.name}'s transaction history: #{guest.transaction_history}"
  end
end


