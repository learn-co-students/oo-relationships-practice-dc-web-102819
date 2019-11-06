class Driver
    attr_reader :name
    @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        #   - returns an array of all drivers
        @@all
    end
    def rides
        # returns all rides a driver has made
        Ride.all.select do |ride|
            ride.driver == self
        end
    end
    
    
    def passengers
        # - returns all passengers a driver has had
        self.rides.collect do |ride|
            ride.passenger
        end
    end
    
    def driver_total_miles
        total = self.rides.collect do |ride|
            ride.distance
        end.sum #add up all the elements on the total array that is returned by 
                #collect method
    end
    

    def self.mileage_cap(distance)
        # - takes an argument of a distance (float) and returns all drivers who have
        # exceeded that mileage
        self.all.select do |driver|
            driver.driver_total_miles > distance.to_f
        end
    end  
    
end
