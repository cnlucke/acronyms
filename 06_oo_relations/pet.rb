class Pet
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def pet_owners
    PetOwner.all.select do |pet_owner|
      pet_owner.pet == self
    end
  end

  def owners
    pet_owners.map do |pet_owner|
      pet_owner.owner
    end
  end

  def owner_names
    owners.collect { |owner| owner.name } 
  end
end
