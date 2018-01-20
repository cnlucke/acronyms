class Person
  @@all = []

  attr_accessor :name, :age, :apartment


  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  # @johann.rent(@apt)

  def rent(apartment, amount)
    Rental.new(self, apartment, amount)
  end


  def rentals
    Rental.all.select do |rental|
      rental.person == self
    end
  end


  def apartments
    rentals.map do |rental|
      rental.apartment
    end
  end





end
