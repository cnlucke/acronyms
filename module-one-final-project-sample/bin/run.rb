require_relative '../config/environment'

random_pokemon = PokemonApiAdapter.random_pokemon
Pokemon.find_or_create_through_hash(random_pokemon)
