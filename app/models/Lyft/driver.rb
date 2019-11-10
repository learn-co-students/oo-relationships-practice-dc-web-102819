class Driver
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
        ride.driver == self
    end
end

def passengers
    self.rides.collect do |ride| 
        ride.passenger.uniq
end
end

def total_distance
    self.rides.sum do |ride| 
        ride.distance      
    end
end

def self.mileage_cap(distance)
    self.all.select do |driver|
        driver.total_distance > distance
    end
end
end
