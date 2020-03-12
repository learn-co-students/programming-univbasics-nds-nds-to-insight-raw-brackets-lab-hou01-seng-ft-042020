$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  # [
  #   {
  #     :name => string,
  #     :movies => [
  #       {
  #         :title => string,
  #         :studio => string,
  #         :worldwide_gross => int,
  #         :release_year => int
  #       }
  #     ]
  #   }
  # ]
  # 
  
  director_leaderboard = {}
  index = 0 
  while nds[index] do 
    director_hash = nds[index]
    puts director_hash
    director_name = director_hash[:name]
    movie_index = 0 
    total_gross = 0
    while director_hash[:movies][movie_index] do 
      movie_hash = director_hash[:movies][movie_index]
      total_gross += movie_hash[:worldwide_gross]
      movie_index += 1
    end
    director_leaderboard[director_name] = total_gross
    index += 1 
  end
  director_leaderboard
end

