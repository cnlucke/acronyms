class Apartment
  @@all = []
  attr_accessor :street, :number


  def initialize(street, number)
    @street = street
    @number = number
    @@all << self
  end

  # @apt = Apartment.new("Delancey", 100)
  # @johann = Person.new("Johann", 100)
  # @apt.new_tenant(@johann)

  # def new_tenant(person)
  #   @renters << person
  #   person.apartment = self
  # end


  def rentals
    Rental.all.select do |rental_instance|
      rental_instance.apartment == self
    end
  end


  # GIVE ME BACK INSTANCES OF ALL THE PERSONS RENTING MY APARTMENT
  # self.all_renters
  # an apartments
  # @apt.all_renters
  #
  def all_renters
    # self -> @apartments
    rentals.map do |rental|
      # self -> a) rental b) person c) apt

      rental.person
    end
  end


  def self.all
    @@all
  end


  def total_rent
    sum = 0
    rentals.each do |rental|
      sum += rental.rent
    end
    sum
  end


  # def all_renters # gives me all the renter names
  #   renters.map do |r|
  #     r.name
  #   end
  # end
end














# MANY TO MANY

# @apartment.renters
# @johann.apartments



# OR!!!

# ONE TO MANY

# @apartment.renters
# @johann.apartment


# @johann.street_names
# @apartment.total_rent_ever
