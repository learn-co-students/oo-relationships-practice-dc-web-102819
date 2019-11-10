class Passenger
@@all = []
attr_reader :name

def initialize (name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def rides
    Ride.all.select do |ride|
        ride.passenger == self
end
end

def drivers
    self.rides.collect do |ride|
        ride.driver.uniq
end
end

def total_distance
    self.rides.sum do |ride| 
        ride.distance      
    end
end

def self.premium_members
    self.all.select do |passenger|
        passenger.total_distance > 100
    end
end
end
