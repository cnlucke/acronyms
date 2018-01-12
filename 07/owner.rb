class Owner
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def add_pet(pet)
    # HAS_MANY
    PetOwner.new(pet,self)
  end

  def pet_owners
    PetOwner.all.select do |pet_owner|
      pet_owner.owner == self
    end
  end

  # IF I ADDED A PET I SHOULD SEE ALL OF MY PETS
  def pets
    pet_owners.map do |pet_owner|
      pet_owner.pet
    end
  end
end
