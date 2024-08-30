class ActOne
    def datos(nombre, edad)
        "Hola #{nombre} tienes #{edad} años de edad"
    end

    def longitud(texto)
        leng = texto.length
        upp = texto.upcase
        "El texto es: #{upp} y su longitud es de: #{leng} caracteres"
    end

    def separar(texto)
        txt = texto.split
        "El siguiente texto ha sido separado por comas: #{txt}"
    end

end


act = ActOne.new
puts act.datos("Arnulfo", "22")

long = ActOne.new
puts long.longitud("Este texto ha sido modificado y ha sido puesto en mayusculas")

tex = ActOne.new
puts tex.separar("Ingeniería informática en el instituto tecnológico de ciudad Gúzman")
