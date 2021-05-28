datos_alumnos = open("notas.data").read
data = datos_alumnos.split("\n")
b = data.map do |e|
    e.split(",")
end

#value = ARGV[0].to_i
#def nota_mas_alta(array, valor)
#    n = array[valor]
#        m= n.map do |x|
#            x.to_i
#        end
#        print "La nota más alta de #{array[valor][0]} es #{m.max}"
#end
#nota_mas_alta(b, value)
#puts datos_alumnos1[0]

def nota_mas_alta(data)
    data.each do |e|
        1.times do |j|
            puts e[0]
            puts [e.map{|x| x.to_i}.max]
        end
    end
end

nota_mas_alta(b)