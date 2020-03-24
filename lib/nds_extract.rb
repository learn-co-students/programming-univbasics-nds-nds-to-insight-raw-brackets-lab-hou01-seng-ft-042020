$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  
  
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # result = {
    
  # }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  # nil
  
  # pp nds
  
  # binding.pry
  
  result = {}
  i = 0 
  
  
  while i < nds.length do
      
    name_print = nds[i][:name]
    inner_index = 0
    # binding.pry    
    total = 0
    while inner_index < nds[i][:movies].length do
        
      total += nds[i][:movies][inner_index][:worldwide_gross]
      inner_index += 1 
      
    end
    result[name_print] = total
    i += 1
  end
       
  result
  
end
