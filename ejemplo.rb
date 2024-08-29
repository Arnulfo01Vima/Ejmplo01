class Padre
    def initialize(nombre)
        @nombre = nombre
    end
    def say_hello
        "Hola #{@nombre} desde  #{self}"
        
    end
end

class Hijo < Padre
end

saluda1 = Padre.new("Arnulfo")

puts saluda1.say_hello


saluda2 = Hijo.new("Javi")
puts saluda2.say_hello