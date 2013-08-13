movies=Hash.new
File.open("peliculas.txt").readlines.each do |line|
  elementos=line.split(": ")
#movies={elementos[0].to_sym elementos[1].to_int}
movies[elementos[0].downcase.to_sym] = elementos[1].to_i

  end

#movies ={killbill1: 4, killbill2: 4}
puts "opciones : add update display delete"
choice=gets.chomp

case choice
    when "add"
      puts "Pelicula"
      title=gets.chomp
      puts "score"
      rating=gets.chomp
      
      if movies[title.to_sym].nil?
          movies[title.to_sym]=rating.to_i
          puts "su pelicula fue agregada"

      else
          puts "su pelicula ya esta en la lista no se realizaron modificaciones"
  end

    when "update"
    puts "pelicula a la que quiere modificar el rating"
       title=gets.chomp
       
       if movies[title.to_sym].nil?
          puts "su pelicula no se encuentra en la lista"
      else
          puts "esta pelicula tiene una calificacion de #{movies[title.to_sym]}... inserte la nueva calificacion"
          rating=gets.chomp
          movies[title.to_sym]=rating.to_i
          puts "su pelicula fue modificada"          
          
  end
       
       
    when "display"
    movies.each do |movie,rating|
        puts "Pelicula #{movie.capitalize}: Score #{rating}"
end
    when "delete"
       puts"que pelicula desea borrar?"
       title=gets.chomp
       
       if movies[title.intern].nil?
           puts "su pelicula no se encuentra en la lista"
      else
       movies.delete(title.to_sym)
       puts"la pelicula #{title} fue borrada"
       puts movies.keys
   end
    else
      puts"Error!"
end

          
            file = File.open("peliculas.txt", 'w')
          movies.each do |movie,rating|
            file.write("#{movie.to_s.capitalize}: #{rating}\n")
          end

