require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# kelley = Passenger.new("Kelley")
# joyce = Passenger.new("Joyce")
# kara = Passenger.new("Kara")


# rachel = Driver.new("Rachel")
# meg = Driver.new("Meg")
# jose = Driver.new("Jose")

# ride1 = Ride.new(kelley, rachel, 5)
# ride2 = Ride.new(joyce, meg, 9)
# ride3 = Ride.new(kara, jose, 22)
# ride4 = Ride.new(kelley, jose, 15)
# ride5 = Ride.new(joyce, rachel, 49)
# ride6 = Ride.new(kara, jose, 84)

listing1 = Listing.new("NYC")
listing2 = Listing.new("Charlotte")
listing3 = Listing.new("Boise")


kara =  Guest.new("Kara")
kelley = Guest.new("Kelley")
rachel = Guest.new("Rachel")

trip1 = Trip.new(listing1, kara)
trip2 = Trip.new(listing3, kelley)
trip3 = Trip.new(listing2, kara)
trip4 = Trip.new(listing2, rachel)
trip5 = Trip.new(listing2, kelley)

binding.pry
0