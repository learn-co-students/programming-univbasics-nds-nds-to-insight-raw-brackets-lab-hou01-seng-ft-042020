def directors_totals(nds)
 total = {}
 i = 0
 while i < nds.length do
    d_name = nds[i][:name]
    j = 0
    total [d_name] = 0
    while j < nds[i][:movies].length do
      total [d_name] += nds[i][:movies][j][:worldwide_gross]
      j += 1
    end
  i += 1
 end
 total
end
