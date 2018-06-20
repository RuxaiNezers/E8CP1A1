def conteo_peliculas
	file = File.open('peliculas.txt', 'r')
	lines = file.readlines
	file.close
	puts "El total de peliculas es: #{lines.count}"
end

conteo_peliculas