class Ride

    attr_reader :driver, :passenger
    attr_accessor :distance
    @@all =[]
    def initialize (driver, passenger, distance)

        @driver= driver
        @passanger=passenger
        @distance = distance

        @@all <<self
    end
    
    def self.all
        @all
    end

    def self.total_distance
        self.all.sum do |ride|
            ride.distance
        end
    end
    def self.average_distance
        self.total_distance/self.all.length
    end
end
