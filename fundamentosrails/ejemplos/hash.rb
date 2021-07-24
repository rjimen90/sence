=begin x ={"first_name"=>"Luis", "last_name"=>"Perez","calle"=>"moneda"}
puts x["calle"].eql? "plaza"
y = {:first_name => "Luis" ,:last_name => "perez"}
puts y[:first_name]
x ={:first_name=>"Luis", :last_name=>"Perez",:calle=>"moneda"}
puts x[:first_name]
x.delete :first_name
puts x
puts x.empty?
puts x.has_key?:numero
puts x.has_key?:last_name
puts x.has_value?"perez"
puts x.has_value?"Perez"
=end

# def new_user user={first_name:"nombre",last_name:"apellido"}
#puts "#{user[:first_name]} #{user[:last_name]}"
#end
#new_user {first_name:"pedro", last_name:"rios"}

def nuevo_usuario usuario = {first_name: "Nombre", last_name: "Apellido"}
  puts "Bienvenido a nuestro sitio, "#{usuario[first_name:]} #{usuario[last_name:]}!"
end
nuestro_usuario = {nombre: 'Oscar', apellido: "Vazquez"}
nuevo_usuario # => "Bienvenido a nuestro sitio, Nombre Apellido!"
nuevo_usuario nuestro_usuario # => "Bienvenido a nuestro sitio, Oscar Vasquez!"
