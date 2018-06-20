def conteo_palabras
	file = File.open('peliculas.txt', 'r')
	content = file.read
	file.close
	word = content.split(' ')
	word.length
end

def conteo_palabra_especifica(palabra)
	file = File.open('peliculas.txt', 'r')
	content = file.read
	file.close
	word = content.split(' ')
	total = word.count("#{palabra}")

end

puts conteo_palabras
puts conteo_palabra_especifica("La")