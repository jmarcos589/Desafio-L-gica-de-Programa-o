expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'
cont_areia = 0
cont_diamante = 0

expressao.size.times do |i|
  if expressao[i] == '.'
    cont_areia += 1
  end

  if expressao[i] == '>' && expressao[i-1] == '<'
    cont_diamante += 1
  end
end
puts "A expressão tem %d areias e %d diamantes" % [cont_areia, cont_diamante]