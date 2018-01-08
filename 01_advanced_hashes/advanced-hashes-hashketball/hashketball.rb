require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def players
  game_hash[:home][:players] + game_hash[:away][:players]
end




def teams
  team_array = []
  team_array << game_hash[:home]
  team_array << game_hash[:away]
  team_array
end

def find_team(name)
  teams.find { |team| team[:team_name] == name }
end

def find_player(player)
  players.find do |p|
    p[:player_name] == player
  end
end


def shoe_size(player)

  found_player = find_player(player)
  found_player[:shoe]
end

# player = "Johann"
def num_points_scored(player)
  found_player = find_player(player)
  found_player[:points]
end


def team_colors(team_name)
  if find_team(team_name)
    find_team(team_name)[:colors]
  end
end


def player_numbers(team_name)
  team = find_team(team_name)
  if team
    team[:players].map do |player|
      player[:number]
    end
  end
end

# RETURN ANY PLAYER HASH WHERE NUMBER > 20
def players_with_nums_greather_than_twenty
  players.select do |player|
    player[:number] > 20
  end
end


def player_stats(player)
  found_player = find_player(player)
  if found_player
    found_player.delete(:player_name)
    found_player
  end

end
Pry.start
