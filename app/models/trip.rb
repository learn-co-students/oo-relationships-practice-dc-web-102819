class Trip
    attr_reader :listing, :guest
    @@all = []
    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end


    def self.all
        # returns an array of all trips
        @@all
    end
end