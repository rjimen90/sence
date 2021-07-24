#Escriba un programa que muestre todos los números del 1 al 255.
#x= (1..255)
#puts "#{x.to_a}"
#Escriba un programa que muestre todos los números impares del 1 al 255
#x = (1..255)
#puts x.find_all { |i| i %2 !=0 }.to_s
=begin Escriba un programa que muestre los números del 0 al 255, pero esta vez, 
#muestre también la suma de los números que se han mostrado hasta el momento. 
#Por ejemplo, tu programa debe mostrar algo como esto
suma = 0
x=(1..255)
x.each do |dato|
    puts "nuevo numero:#{dato}suma:#{suma=suma+dato}"
end
=end
=begin
Dado un arreglo X, digamos [1, 3, 5, 7, 9, 13], 
escriba un programa que recorra cada elemento del arreglo y muestre su valor.
x = [1, 3, 5, 7, 9, 13]
x.each do |elemento|
    puts "#{elemento}"
end
=end 
=begin Escriba un programa (un conjunto de instrucciones) que tome cualquier arreglo
y muestre el valor máximo del arreglo. Tu programa debe funcionar también con 
arreglos que tengan todos los números negativos (ejemplo [-3, -5, -7]), 
o incluso una combinación con números positivos, negativos y cero.

x = [-3, -15, -7]
y = [2,6,9,3]
puts "El valor mínimo en el array x es : #{x.min}"
puts "El valor mínimo en el array y es : #{y.min}"
puts "El valor máximo en el array x es : #{x.max}"
puts "El valor máximo en el array y es : #{y.max}"
=end
=begin Escriba un programa que tome un arreglo y muestre el PROMEDIO de los valores 
del arreglo. Por ejemplo para el arreglo [2, 10, 3] tu programa debe mostrar 
un promedio de 5. De nuevo, asegúrate de crear un caso base y escribe las instrucciones 
para resolver este caso primero, luego ejecuta tus instrucciones para otros casos más complicados. 
Puedes utilizar la función length para esta actividad.

x=[2, 10, 3]
puts "#{x.sum / x.length}"
=end

#Escriba un programa que cree un arreglo "y" que contenga todos los números 
#impares entre 1 y 255. Cuando el programa se complete, "y" debe tener los valores de [1, 3, 5, 7, ... 255].
#x = (1..255)
#puts x.reject {|i| i %2 ==0}.to_s
#Escriba un programa que tome un arreglo y devuelva la cantidad de números que son mayores a un valor dado Y.
#Por ejemplo si el arreglo es [1, 3, 5, 7] y Y = 3, después de ejecutar tu programa debe mostrar 2 (debido a que hay 2 valores en el arreglo que son mayores a 3).
#x = [1, 3, 5, 7]
#puts x.count {|i| i > 3}
=begin
def contar (*x)
    puts x.count {|i| i > x.last}
    end
contar '1','3','5','7','3'
def mayorQueY(arreglo,y)
    puts arreglo.count {|i| i > y}
end
mayorQueY [1, 3, 5, 7] , 3
=end
#Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo
#(un conjunto e instrucciones) que multiplique cada valor en el arreglo por si mismo. 
#Cuando el programa termine, el arreglo x debe tener valores que han sido elevados al cuadrado, es decir [1, 25, 100, 4].
=begin x= [1, 5, 10, -2]
x.each do |i|
  puts "#{i*i}"
end
=end
=begin Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace
cualquier número negativo con 0. Cuando el programa termine, x no debe tener valores negativos, es decir [1, 5, 10, 0].
x = [1, 5, 10, -2]
x.each_with_index do |elemento,i|
    if elemento < 0
      x[i]=0
   end
  end
   puts x.to_s
=end
#Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que devuelva un hash con el valor máximo, 
#el valor mínimo y el promedio de los valores en el arreglo.
#x = [1, 5, 10, -2]
#puts "#{x.min} #{x.max} #{x.sum / x.length}"
=begin Dado un arreglo x, cree un algoritmo que cambie cada número del arreglo por el número que hay en la siguiente posición.
#Por ejemplo, dado el arreglo [1, 5, 10, 7, -2], cuando el programa termine, este arreglo debe ser [5, 10, 7, -2, 0].
x = [1, 5, 10, 7, -2]
"#{x.delete_at(0)} #{x.push(0)}"
puts "#{x}"
=end
