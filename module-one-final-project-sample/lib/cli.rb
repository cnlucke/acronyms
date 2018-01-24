class Cli
  attr_accessor :current_user

  def initialize
    @current_user = nil
  end

  def welcome
    puts "Welcome to CATCH THEM ALL"
    become_trainer
  end

  def become_trainer
    puts "What would you like to do?(enter a number)"
    puts "1.Create a Trainer 2.Choose a Trainer 3.Exit"
    response = gets.chomp
    case response
    when "1"
      create_trainer
    when "2"
      choose_a_trainer
    when "3"
      exit
    else
      puts "Thats option is not valid"
      become_trainer
    end
  end

  def create_trainer
    trainer ={}
    puts "What is your name?"
    trainer[:name] = gets.chomp
    puts "what town are you from?"
    trainer[:town] = gets.chomp
    self.current_user = Trainer.find_or_create_by(trainer)
    trainer_choices
  end

  def choose_a_trainer
    Trainer.list_all_trainers
    puts "Which trainer would you like to be?"
    trainer_id = gets.chomp
    self.current_user = Trainer.find_by(id: trainer_id)
    trainer_choices
  end

  def trainer_choices
    puts "Would you like to do \n1.Catch a wild Pokemon 2.View all your pokemons 3.Create a Trainer 4.Exit"
    response = gets.chomp
    case response
    when "1"
      catch_wild_pokemon
    when "2"
      display_pokemons
    when "3"
      create_trainer
    when "4"
      exit
    else
      puts "Thats option is not valid"
      trainer_choices
    end
  end

  def catch_wild_pokemon
    newPokemon = current_user.catch_pokemon
    puts"You just caught a pokemon!!!"
    puts"pokemon number: #{newPokemon.pokemon_number}, name: #{newPokemon.name}, weight: #{newPokemon.weight}"
    trainer_choices
  end

  def display_pokemons
    current_user.display_pokemons
    trainer_choices
  end

end
