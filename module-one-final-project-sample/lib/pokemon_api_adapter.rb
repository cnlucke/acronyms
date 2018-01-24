class PokemonApiAdapter
  ROUTE = "http://pokeapi.co/api/v2/pokemon/"

  def self.get_route
    ROUTE
  end

  def self.random_number
    rand(1..151)
  end

  def self.random_pokemon
    url = "#{get_route}#{random_number}"
    response = HTTParty.get(url)
    JSON.parse(response.body)
  end

end
