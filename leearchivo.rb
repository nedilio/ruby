movies=Hash.new
File.open("data.txt").readlines.each do |line|
  elementos=line.split(": ")
#movies={elementos[0].to_sym elementos[1].to_int}
movies[elementos[0].downcase.to_sym] = elementos[1].to_i

  end

            file = File.open("data.txt", 'w')
          movies.each do |movie,rating|
            file.write("#{movie.capitalize}: #{rating}\n")
          end