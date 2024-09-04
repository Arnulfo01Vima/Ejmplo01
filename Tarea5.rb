require 'faker'

# Crear una lista de 100 cantantes
cantantes = []

100.times do
  cantante = {
    nombre: Faker::Name.name,
    domicilio: Faker::Address.full_address,
    email: Faker::Internet.email
  }
  cantantes << cantante
end

# Imprimir la lista de cantantes
cantantes.each_with_index do |cantante, index|
  puts "#{index + 1}. Nombre: #{cantante[:nombre]}, Domicilio: #{cantante[:domicilio]}, Email: #{cantante[:email]}"
end
