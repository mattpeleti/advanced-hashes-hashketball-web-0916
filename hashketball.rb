def game_hash
  gamehash = {

    :home => {
      :team_name => "Brooklyn Nets",
      :colors => [ "Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1

        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7

        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15

        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5

        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1

        }

      }       #where players ends

    },              #where the home team ends

    :away => {
      :team_name => "Charlotte Hornets",
      :colors => [ "Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2

        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10

        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5

        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0

        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12

        }
      }
    }

  }

  gamehash
end

def find_player(player)
   game_hash.keys.detect do |team|
     game_hash[team][:players].include?(player)
   end
end

def num_points_scored(player)
   game_hash[find_player(player)][:players][player][:points]
end

def num_points_scored(player)
   game_hash[find_player(player)][:players][player][:points]
end

def shoe_size(player)
   game_hash[find_player(player)][:players][player][:shoe]
end

 def team_colors(team)
   team_colors = []
   game_hash.each do |key,teams|
     if team == teams[:team_name]
      team_colors = teams[:colors]
    end
   end
   return team_colors
 end

 def team_names
  team_name = []
  game_hash.each do |key,teams|
    team_name << teams[:team_name]
  end
  return team_name
end

def player_numbers(team)
  team_side = game_hash.keys.detect do |key|
    game_hash[key][:team_name] == team
  end
  game_hash[team_side][:players].map do |player, stats|
    stats[:number]
  end
end

def player_stats(player)
  game_hash[find_player(player)][:players][player]
end


def big_shoe_rebounds
   biggestShoe = 0
   biggestRebounds = 0
   game_hash.each do |side,team_data|
     team_data[:players].each do |name,stats|
       if stats[:shoe] > biggestShoe
         biggestShoe = stats[:shoe]
         biggestRebounds = stats[:rebounds]
       end
     end
   end
   biggestRebounds
 end
