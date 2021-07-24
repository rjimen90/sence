a = ["Mike","Steve", "David", "Goliat"] 
b = [3,5,7,9]
c= ["nombre",12]
puts "#{a.at(0)}"
puts "#{b.fetch(-3)}"
puts "#{b.fetch(1)}"
puts "#{b.reverse},#{c.reverse}"
puts "#{a.length},#{b.length},#{c.length}"
puts "#{a.sort}"
puts "#{a.slice(0,3)},#{b.slice(2,3)}"
puts "#{a.shuffle},#{a.shuffle}"
puts "#{a.join("-")},#{b.join(";")}"
puts "#{c.insert(1,3)}"
puts "#{c.insert(1,3,4,5)}"
