$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
    result = {
  }
  pp nds[0][:movies][0][:worldwide_gross]
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  director_index = 0
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    result[director_name] = 0
    movie_index = 0
    while movie_index < nds[director_index][:movies].length do
    gross = nds[director_index][:movies][movie_index][:worldwide_gross]
    result[director_name] += gross
    movie_index += 1
  end
  director_index += 1
end
     
    
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  return result
  nil
end
