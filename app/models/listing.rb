class Listing
    attr_reader :city, :title
    # using title for the title of the listing (maybe I need this - if not delete)
    # i.e. "Great apartment in Dupont Circle"
    @@all = []
    # @@number_of_trips_per_listing = 0
    def initialize(city)
      @city = city
      @@all << self
    end

    def self.all
        #     - returns an array of all listings
        @@all
    end
    
    def guests
        # returns an array of all guests who have stayed at a listing
        self.trips.collect do |trip|
            trip.guest
        end
    end
    
   
   def trips
    #     - returns an array of all trips at a listing
    Trip.all.select do |trip|
        trip.listing == self
    end
   end
   
   def trip_count
    #     - returns the number of trips that have been taken to that listing
        self.trips.count
   end
   
#   - .find_all_by_city(city)
#     - takes an argument of a city name (as a string) and returns all the listings for that city
#   - .most_popular
#     - finds the listing that has had the most trips  
end