# puts "Los argumentos recibidos son:"
# puts ARGV.inspect
# puts ""
# ARGV.push("szdvzdfb")
# puts ARGV.inspect

# def pigLatin1
#   p word = ARGV
#   arr = word[0].split("")
#   letra = arr.first
#   aux = []
#   if letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u" 
#     puts arr.join + "way"
#   else
#     while letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u" && !arr.empty?
#       aux.push(letra)
#       arr.delete(letra)
#       letra = arr.first
#     end
#     puts arr.join + aux.join + "ay"
#   end
# end
#pigLatin1

def pigLatin2(palabra)
  arr = palabra.split("")
  letra = arr.first
  aux = []
  if letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u" 
    resp = arr.join + "way"
  else
    while letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u" && !arr.empty?
      aux.push(letra)
      arr.delete(letra)
      letra = arr.first
    end
    resp = arr.join + aux.join + "ay"
  end
  resp
end

def oracionesPigLatin
  p oracion = ARGV.inspect
  p arr = oracion.split("\"")
  arr.pop(0)
  arr.pop
  arr.delete(", ")
  p arr
  aux = []
  arr.each{|x| aux << pigLatin2(x)}
  aux.each{|x| print x + " "}
end

oracionesPigLatin