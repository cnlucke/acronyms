class PetOwner
  @@all = []
  attr_accessor :pet, :owner


  def initialize(pet, owner)
    @pet = pet
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end


  


end
