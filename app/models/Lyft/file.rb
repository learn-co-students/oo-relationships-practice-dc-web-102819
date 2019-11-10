# create files for your ruby classes in this director
require_relative './driver.rb'
require_relative './passanger.rb'
require_relative './ride.rb'
require 'pry'


marija=Passenger.new("Marija")
sasa=  Passenger.new("Sasa")
driver1=Driver.new("Driver_1")
driver2=Driver.new("Driver_2")
ride1=Ride.new(marija,driver1, 45.to_f)
ride2=Ride.new(sasa,driver2, 60.to_f)



binding.pry
0