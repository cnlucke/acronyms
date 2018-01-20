class Rental
  @@all = []
  attr_accessor :person, :apartment, :rent





  def initialize(person, apartment, rent)
    @person = person
    @apartment = apartment
    @rent = rent
    @@all << self
  end


  def self.all
    @@all
  end



end





# MOVIE HAS MANY ACTORS
# ACTOR HAS MANY MOVIES
# MOVIEACTOR BELONGS TO A SINGLE MOVIE
# MOVIEACTOR BELONGS TO A SING ACTOR
