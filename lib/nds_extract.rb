require 'directors_database'
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    cumulative = 0
    title_index = 0
    director_name = nds[director_index][:name]
    while title_index < nds[director_index][:movies].length do
      cumulative += nds[director_index][:movies][title_index][:worldwide_gross]
      title_index += 1
      result[director_name] = cumulative
    end
    director_index += 1
  end
  p result
end

def gross_for_director(director_data)
#  first_director_hash = Spielberg total = currently "nil"
  p directors_totals(directors_database)["Stephen Spielber"]
#first_director_name = directors_database.first.values.first
#first_director_hash = directors_database.find{ |x| x[:name] == first_director_name }
end
