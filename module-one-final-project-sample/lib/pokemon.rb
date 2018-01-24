class Pokemon < ActiveRecord::Base
  has_many :trainer_pokemons
  has_many :trainers, through: :trainer_pokemons

  def self.find_or_create_through_hash(pokemon_hash)
    parse_hash(pokemon_hash)
  end

  def self.parse_hash(hash)
    pokemon ={}
    hash.each do |k,v|
      if v == "id"
        
        binding.pry
      end
    end

  end
end
