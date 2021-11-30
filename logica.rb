expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>' # Inicializando variáveis
num = expressao.size
cont_areia = 0
cont_diamante = 0

num.times do |i| # Laço para iterar as areias
  if expressao[i] == '.'
    cont_areia += 1 # Contador de Areias na expressão
  end
end
expressao = expressao.delete('.') # Deletando Areias

while expressao.size != 4 do # Laço para iterar diamantes e refazer processo até acabar todos 
  num.times do |i| 
    if expressao[i] == '>' && expressao[i-1] == '<' 
      cont_diamante += 1 # Contador de Diamantes na expressão
      expressao = expressao.sub('<>', '') # Deletando Diamantes
    end
  end
end

puts "A sobra da expressão foi ", expressao
puts "Foram retiradas %d areias e %d diamantes" % [cont_areia, cont_diamante]
