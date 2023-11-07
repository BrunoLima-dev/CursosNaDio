require 'cpf_cnpj'

puts ' ****   *****  ***** '
puts '*    *  *    * *     '
puts '*       *    * *     '
puts '*       *****  ****  '
puts '*       *      *     '
puts '*    *  *      *     '
puts ' ****   *      *     '

loop do
  puts 'Escolha uma opção no Menu: '
  puts '1 - Verifique CPF.'
  puts '0 - sair'
  opcao = gets.chomp.to_i

  case opcao
  when 1
    puts 'Por favor, digite seu CPF:'
    cpf = gets.chomp

    if cpf.length < 11
      puts 'Número de caracteres menor do que o necessário.'
    elsif cpf.length > 11
      puts 'Número de caracteres maior que o necessário.'
    else
      if CPF.valid?(cpf)
        puts 'CPF válido'
        break
      else
        puts 'CPF inválido'
      end
    end
  when 0
    puts 'Programa Fechado...'
    exit
  end
end
