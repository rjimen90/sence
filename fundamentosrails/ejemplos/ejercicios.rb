=begin first_name = "Leo"
last_name = "Messi"

puts "your name is"
puts first_name
puts last_name
=end

#puts "your name is " "first_name " "last_name"

#first_name = "Leo"
#last_name = "Messi"
#puts "first name is #{first_name} and last name is #{last_name}"
#puts "first names is %s and last name is %s" %[first_name,last_name]

=begin z=25
puts "el valor de z es %d" % z
puts "el valor de z es %d" % [z]
puts "el valor de z es #{z}"
puts " i am 5'10\" tall"
=end

#x = "codingDojo"
=begin y=3
puts x
puts x.length
puts x.class
puts y.class
=end

=begin puts x.capitalize
puts x.upcase
puts x.downcase
puts x[4]
puts x.include?("Dojo")
puts "esta incluida la palabra Dojo " if x.include? "Dojo"
=end

=begin x= "john, mike, pete, david"
puts x.split(",").to_s

y = ""
puts "esta vacio " if y.empty?
=end
#puts "esto es una cadena de letras" .class

=begin def adivina_numero valor
    number = 25
    # tu código aquí
    if valor == number
        puts "Lo conseguiste"
    elsif
        valor > number
        puts "La suposicion fue demasiado alta"
    else
        valor <  number
        puts "La suposicion fue demasiado baja"
    end
end
adivina_numero 25
=end
