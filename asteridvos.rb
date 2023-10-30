letras_asteriscos = {
  'a' => [
    '***** ',
    '*   * ',
    '*   * ',
    '***** ',
    '*   * ',
    '*   * ',
    '*   * '
  ],
  'b' => [
    '****  ',
    '*   * ',
    '*   * ',
    '****  ',
    '*   * ',
    '*   * ',
    '****  '
  ],
  'c' => [
    ' ****  ',
    '*    * ',
    '*      ',
    '*      ',
    '*      ',
    '*    * ',
    ' ****  '
  ],
  'd' => [
    '*****   ',
    '*    *  ',
    '*     * ',
    '*     * ',
    '*     * ',
    '*    *  ',
    '*****   '
  ],
  'e' => [
    '*****  ',
    '*      ',
    '*      ',
    '*****  ',
    '*      ',
    '*      ',
    '*****  '
  ],
  'f' => [
    '*****  ',
    '*      ',
    '*      ',
    '****   ',
    '*      ',
    '*      ',
    '*      '
  ],
  'g' => [
    ' *****  ',
    '*      ',
    '*      ',
    '*      ',
    '*   ***',
    '*     * ',
    ' *****  '
  ],
  'h' => [
    '*   *  ',
    '*   *  ',
    '*   *  ',
    ' ***** ',
    '*   *  ',
    '*   *  ',
    '*   *  '
  ],
  'i' => [
    '***** ',
    '  *   ',
    '  *   ',
    '  *   ',
    '  *   ',
    '  *   ',
    '***** '
  ],
  'j' => [
    '     * ',
    '     * ',
    '     * ',
    '     * ',
    '*    * ',
    '*    * ',
    ' ****  '
  ],
  'k' => [
    '*   *  ',
    '*  *   ',
    '* *    ',
    '**     ',
    '* *    ',
    '*  *   ',
    '*   *  '
  ],
  'l' => [
    '*     ',
    '*     ',
    '*     ',
    '*     ',
    '*     ',
    '*     ',
    '***** '
  ],
  'm' => [
    ' *     * ',
    ' * * * * ',
    ' *  *  * ',
    ' *  *  * ',
    ' *     * ',
    ' *     * ',
    ' *     * '
  ],
  'n' => [
    ' *     * ',
    ' * *   * ',
    ' *  *  * ',
    ' *   * * ',
    ' *    ** ',
    ' *     * ',
    ' *     * '
  ],
  'o' => [
    ' ****  ',
    '*    * ',
    '*    * ',
    '*    * ',
    '*    * ',
    '*    * ',
    ' ****  '
  ],
  'p' => [
    ' *****  ',
    ' *    * ',
    ' *    * ',
    ' *****  ',
    ' *      ',
    ' *      ',
    ' *      '
  ],
  'q' => [
    '  ****  ',
    ' *    * ',
    ' *    * ',
    ' *    * ',
    ' *  * * ',
    ' *   *  ',
    '  ** *  '
  ],
  'r' => [
    '*****  ',
    '*    * ',
    '*    * ',
    '*****  ',
    '*   *  ',
    '*    * ',
    '*     *'
  ],
  's' => [
    '  *****  ',
    ' *      ',
    ' *      ',
    '  *****  ',
    '       * ',
    '       * ',
    '  *****  '
  ],
  't' => [
    '*******  ',
    '   *    ',
    '   *    ',
    '   *    ',
    '   *    ',
    '   *    ',
    '   *    '
  ],
  'u' => [
    '*    * ',
    '*    * ',
    '*    * ',
    '*    * ',
    '*    * ',
    '*    * ',
    ' ****  '
  ],
  'v' => [
    '*     * ',
    '*     * ',
    '*     * ',
    '*     * ',
    ' *   *  ',
    '  * *   ',
    '   *    '
  ],
  'w' => [
    '*     * ',
    '*     * ',
    '*     * ',
    '*  *  * ',
    '* * * * ',
    '**   ** ',
    '*     * '
  ],
  'x' => [
    '*   * ',
    ' * *  ',
    '  *   ',
    '  *   ',
    ' * *  ',
    '*   * ',
    '*   * '
  ],
  'y' => [
    '*   * ',
    '*   * ',
    '*   * ',
    ' * *  ',
    '  *   ',
    '  *   ',
    '  *   '
  ],
  'z' => [
    '******* ',
    '     *  ',
    '    *   ',
    '   *    ',
    '  *     ',
    ' *      ',
    '******* '
  ]
}

# Define uma função chamada print_letras_asteriscos que recebe duas variáveis como argumentos.
def print_letras_asteriscos(palavra, letras_asteriscos)
  # Inicializa um array chamado linhas_letras com 7 strings vazias. Cada elemento representa uma linha.
  linhas_letras = Array.new(7, '')

  # Itera por cada caractere da palavra de entrada.
  palavra.each_char do |letra|
    # Verifica se a letra existe no hash letras_asteriscos.
    if letras_asteriscos.key?(letra)
      # Atribui a representação em asteriscos da letra correspondente à variável letras.
      letras = letras_asteriscos[letra]
      # Itera 7 vezes para cada linha.
      7.times { |i| linhas_letras[i] += letras[i] }  # Concatena as letras na linha apropriada
    else
      # Se a letra não existe no hash, imprime uma mensagem de erro e retorna.
      puts "Letra não encontrada para '#{letra}'"
      return
    end
  end

  # Itera pelas linhas preenchidas com letras em asteriscos e as imprime.
  linhas_letras.each { |linha| puts linha }
end

# Solicita ao usuário que digite uma palavra e a converte para minúsculas para lidar com maiúsculas e minúsculas.
puts 'Digite uma palavra:'
palavra = gets.chomp.downcase

# Chama a função print_letras_asteriscos com a palavra de entrada e o hash letras_asteriscos como argumentos.
print_letras_asteriscos(palavra, letras_asteriscos)
