class Passenger
    
    attr_reader :name
    @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        #   - returns an array of all passengers
        @@all
    end

    def rides
        #   - returns all rides a passenger has been on
        Ride.all.select do |ride|   # vamos a la clase Ride al metodo all y usamos el enumerador select
            ride.passenger == self  # iteramos sobre ride y comparamos ride.passenger == self 
        end                         # ride passenger es una instancia de la clase ride
                                    # self es una instancia de la clase passenger
    end
    
    def drivers
        # - returns all drivers a passenger has ridden with
        self.rides.collect do |ride|
            ride.driver
        end
    end
        
    def total_distance
        # - should calculate the total distance the passenger has travelled with the
        #   service
        miles_traveled = self.rides.collect do |ride|
            ride.distance
        end
        miles_traveled.sum
    end
    
    def self.premium_members
        # - should find all passengers who have travelled over 100 miles with the service
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end
    
    def my_drivers_names_through_rides
        self.rides.collect do |ride|
            ride.driver.name
        end
    end

end