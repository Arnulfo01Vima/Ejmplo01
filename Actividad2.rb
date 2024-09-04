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
  end
  
  # Interacción con el usuario
  puts "Introduzca una cadena"
  texto = $stdin.gets.chomp
  
  # Crear el objeto con la cadena proporcionada
  contador = Actividad2.new(texto)
  
  # Obtener y mostrar el conteo de palabras
  resultado = contador.contar_palabras_repetidas
  resultado.each do |palabra, cantidad|
    puts "#{palabra}: #{cantidad}"
  end
  
  # Actualizar el texto y mostrar el nuevo conteo
  puts "Introduzca una nueva cadena"
  nuevo_texto = $stdin.gets.chomp
  contador.actualizar_texto(nuevo_texto)
  
  # Mostrar el nuevo conteo de palabras
  nuevo_resultado = contador.contar_palabras_repetidas
  nuevo_resultado.each do |palabra, cantidad|
    puts "#{palabra}: #{cantidad}"
  end
  