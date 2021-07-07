class Ride
    attr_reader :passenger, :driver, :distance

    @@all = []
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f #.to_f is converting distance to float
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def self.average_distance
        # - should find the average distance of all rides
        distance_total = self.all.collect do |ride|
            ride.distance
        end
        (distance_total.sum / distance_total.length)
    end
    

end