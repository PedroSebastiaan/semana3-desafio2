ventas_base = open('ventas_base.db').read.chomp.split(',') 

def proyecciones_venta(array) 
    a = array.map do |e| 
        e.to_f 
    end 

    b = a.take(6).sum 
    c = a.drop(6).sum 

    resultados_10 = (b * 1.10) + c
    resltados_10 = resultados_10.round(1)
    resultados_20 = b + (c * 1.20)
    resultados_20 = resultados_20.round(1)
    return resultados_10, resultados_20 
end 

proyecciones_venta(ventas_base) 

File.write('resultados.data', proyecciones_venta(ventas_base).join("\n")) 