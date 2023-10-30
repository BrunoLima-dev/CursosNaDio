require 'timeout'
puts 'Iniciando Calculadora...'

puts ' ****  ***** *      ****  *    * *     ***** *****    ****  *****  ***** '
puts '*    * *   * *     *    * *    * *     *   * *    *  *    * *    * *   * '
puts '*      *   * *     *      *    * *     *   * *     * *    * *    * *   * '
puts '*      ***** *     *      *    * *     ***** *     * *    * *****  ***** '
puts '*      *   * *     *      *    * *     *   * *     * *    * *   *  *   * '
puts '*    * *   * *     *    * *    * *     *   * *    *  *    * *    * *   * '
puts ' ****  *   * *****  ****   ****  ***** *   * *****    ****  *     **   * '

loop do
  puts 'Escolha uma opção no Menu: '
  puts '1 - soma'
  puts '2 - subtração'
  puts '3 - multiplicação'
  puts '4 - divisão'
  puts '0 - sair'

  opcao = gets.chomp.to_i

  case opcao
  when 1
    puts "Você escolheu 'Soma'"
    puts 'Escolha o primeiro número: '
    a = gets.chomp.to_i
    puts 'Escolha o segundo número: '
    b = gets.chomp.to_i
    result = a + b
    puts "RESULTADO: 'A soma entre #{a} e #{b} é igual a #{result}.'"
    puts '***************************************************'
  when 2
    puts "Você escolheu 'SUBTRAÇÃO'"
    puts 'Escolha o primeiro número: '
    a = gets.chomp.to_i
    puts 'Escolha o segundo número: '
    b = gets.chomp.to_i
    result = a - b
    puts "A subtração entre #{a} e #{b} é igual a #{result}."
    puts '***************************************************'
  when 3
    puts "Você escolheu 'MULTIPLICAÇÃO'"
    puts 'Escolha o primeiro número: '
    a = gets.chomp.to_i
    puts 'Escolha o segundo número: '
    b = gets.chomp.to_i
    result = a * b
    puts "A multiplicação entre #{a} e #{b} é igual a #{result}."
    puts '***************************************************'
  when 4
    puts "Você escolheu 'DIVISÃO'"
    puts 'Escolha o primeiro número: '
    a = gets.chomp.to_i
    puts 'Escolha o segundo número: '
    b = gets.chomp.to_i
    if b == 0 or a == 0
      puts 'Divisão por 0 não é possivel.'
      puts '***************************************************'
    else
      result = a / b
      puts "A divisão entre #{a} e #{b} é igual a #{result}."
      puts '***************************************************'
    end
  when 0
    puts 'Fechando Calculadora...'
    tempo_limite = 5
    begin
      Timeout.timeout(tempo_limite) do
        puts 'Fechando Calculadora...'
        sleep(tempo_limite)
        puts 'Fechando Calculadora...'
        exit
      end
    rescue Timeout::Error
      puts 'Calculadora Fechada...'
      exit
    end
  end
end