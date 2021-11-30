expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'
num = expressao.size
cont_areia = 0
cont_diamante = 0
i = 0
expressao.size.times do |i|
  if expressao[i] == '.'
    cont_areia += 1
  end
end
expressao = expressao.delete('.')

while expressao.size != 4 do
  num.times do |i|
    if expressao[i] == '>' && expressao[i-1] == '<'
      cont_diamante += 1
      expressao = expressao.sub('<>', '')
    end
  end
end
puts "A sobra da expressão foi ", expressao
puts "Foram retiradas %d areias e %d diamantes" % [cont_areia, cont_diamante]
