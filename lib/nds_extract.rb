# Provided, don't edit
require 'directors_database'
require 'pry'

# A method we're giving you. This "flattens"  Arrays of Arrays so: [[1,2],
# [3,4,5], [6]] => [1,2,3,4,5,6].

def flatten_a_o_a(aoa)
  result = []
  i = 0

  while i < aoa.length do
    k = 0
    while k < aoa[i].length do
      result << aoa[i][k]
      k += 1
    end
    i += 1
  end

  result
end

def movie_with_director_name(director_name, movie_data)
  { 
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end


# Your code after this point

def movies_with_director_key(name, movies_collection)
  new_movies_array = []
  
  movies_collection.each do |movie|
    new_movies_array << movie_with_director_name(name,movie)
  end
  new_movies_array
end


def gross_per_studio(collection)
  
  all_movies_grand_total = {:total_worldwide_gross => 0}
  
  collection.each do |movie|
    if movie[:studio] =  
    all_movies_grand_total[:total_worldwide_gross] += movie[:worldwide_gross]
  end
  
  myarray["Alpha Films"] => 40
  
  # GOAL: Given an Array of Hashes where each Hash represents a movie,
  # return a Hash that includes the total worldwide_gross of all the movies from
  # each studio.
  #
  # INPUT:
  # * collection: Array of Hashes where each Hash where each Hash represents a movie
  #
  # RETURN:
  #
  # Hash whose keys are the studio names and whose values are the sum
  # total of all the worldwide_gross numbers for every movie in the input Hash
end

def movies_with_directors_set(source)
  directors_movies = []
  
  source.each do |director_details|
    director_name = director_details[:name]
    
    director_details[:movies].each do |movie|
      movie[:director_name] = director_name
    end
    
    directors_movies << director_details[:movies]
  end
  directors_movies
end

# ----------------    End of Your Code Region --------------------
# Don't edit the following code! Make the methods above work with this method
# call code. You'll have to "see-saw" to get this to work!

def studios_totals(nds)
  a_o_a_movies_with_director_names = movies_with_directors_set(nds)
  movies_with_director_names = flatten_a_o_a(a_o_a_movies_with_director_names)
  return gross_per_studio(movies_with_director_names)
end
