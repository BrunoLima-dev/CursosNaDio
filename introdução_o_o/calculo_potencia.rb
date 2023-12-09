# Crie um programa na linguagem Ruby que utilize a função matemática potência.

numeros = []

loop do
  puts "Digite um número (ou 'sair' para digitar a potência e fazer o calculo):"
  entrada = gets.chomp

  if entrada == 'sair'
    break
  end

  numero = entrada.to_i
  numeros << numero
end

puts "Números inseridos: #{numeros}"
puts "Digite a potência desejada:"
potencia = gets.chomp.to_i

resultados = []

numeros.each do |numero|
  resultado = numero ** potencia
  resultados << resultado
end

puts "Potêcia dos números inseridos: #{resultados}"
