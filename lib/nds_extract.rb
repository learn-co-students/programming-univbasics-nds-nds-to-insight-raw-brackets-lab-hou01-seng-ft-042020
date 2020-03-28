def directors_totals(nds)
  total = {}
  i = 0
  while i < nds.length do
    directors_name = nds[i][:name]
    j=0
    total[directors_name] = 0
    while j < nds[i][:movies].length do
        total[directors_name] += nds[i][:movies][j][:worldwide_gross]
        j += 1
    end
    i += 1
    end
  total
end
