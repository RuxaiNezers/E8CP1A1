def create_index(str1, str2)
	file = File.open("index.html", 'w')
	file.puts "<p> #{str1} </p>" 
	file.puts "<p> #{str2} </p>"
	file.close
	nil
end

#Trabajare en el mismo archivo, por lo que no sera necesario usar los strings en este metodo
def add_list(array1)
	file = File.open("index.html", 'a') do |file|
		file.puts "<ol>"
		array1.each { |ele| file.puts "<li> #{ele} </li>"} if array1.any?
		file.puts "</ol>"
		file.close
	end
	nil
end

def add_background_color(color)
	file = File.open("index.html", 'r')
	lines = file.readlines
	content = ''
	lines.each	do |value|
	    content += value.gsub("<p>", "<p style='background-color: #{color}'>")
	end
	file2 = File.open("index.html", 'w')
	file2.puts content
	file.close
	file2.close
	nil
end

array = ['elemento 1', 'elemento 2', 'elemento 3']
color = '#b0ccab'

create_index('string1','string2')
add_list(array)
add_background_color(color)