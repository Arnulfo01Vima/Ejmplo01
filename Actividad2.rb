# Clase para contar palabras repetidas en una cadena de texto
class Actividad2
  attr_accessor :texto

  # Inicializar con una cadena de texto
  def initialize(texto)
    @texto = texto
  end

  # Método para contar palabras repetidas
  def contar_palabras_repetidas
    conteo_palabras = Hash.new(0)
    @texto.split.each do |palabra|
      palabra = palabra.downcase
      conteo_palabras[palabra] += 1
    end
    conteo_palabras
  end

  # Método para actualizar la cadena de texto
  def actualizar_texto(nuevo_texto)
    @texto = nuevo_texto
  end

  # Método to_s para mostrar el texto
  def to_s
    "Texto almacenado: #{@texto}"
  end
end

# Interacción con el usuario
puts "Introduzca una cadena"
texto = $stdin.gets.chomp

# Crear el objeto con la cadena proporcionada
contador = Actividad2.new(texto)

# Mostrar el texto utilizando el método to_s
puts contador.to_s

# Obtener y mostrar el conteo de palabras
resultado = contador.contar_palabras_repetidas
resultado.each do |palabra, cantidad|
  puts "#{palabra}: #{cantidad}"
end


