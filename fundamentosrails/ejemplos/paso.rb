arreglo = [1..255]

i = 0
arreglo.each do |elemento|
  if arreglo.even?
    puts "par"
    i = i + 1
  end
end

