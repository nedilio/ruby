=begin 

 def load_movies (path)
  movies=Hash.new
  File.foreach(path) do |line|
  title,rating=line.split(" ")
  movies[title.to_sym]=rating.to_i
  end
  end

  load_movies("peliculas.txt")
  puts movies.values
=end
def load_comics (path)
	comics=Hash.new
	File.foreach(path) do |line|
	name,url=line.split(": ")
	comics[name]=url.strip
	end
	comics
	end

comics=load_comics("comics.txt")

puts comics.keys
puts comics.values