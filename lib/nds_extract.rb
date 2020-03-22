$LOAD_PATH.unshift(File.dirname(__FILE__))

def directors_totals(nds)
  results={}
  director_index=0 

  while director_index < nds.length do
    director_name = nds[director_index][:name]
    results[director_name] = 0
	row_index = 0

    while row_index<nds[director_index][:movies].length do
    results[director_name]+=nds[director_index][:movies][row_index][:worldwide_gross]
      row_index +=1
    end
    director_index += 1
 end
results
end