# rubocop:disable all
@table = ['#', '#', '#', '#', '#', '#', '#', '#', '#']

def table_show
  puts 'Таблица:'
  puts '-1-|-2-|-3-'
  puts '-4-|-5-|-6-'
  puts '-7-|-8-|-9-'
  puts 'Текущая ситуация:'
  puts "-#{@table[0]}-|-#{@table[1]}-|-#{@table[2]}-"
  puts "-#{@table[3]}-|-#{@table[4]}-|-#{@table[5]}-"
  puts "-#{@table[6]}-|-#{@table[7]}-|-#{@table[8]}-"
end

def move(num)
  if num == 1
    puts "#{@player1} ваш ход x:"
  else
    puts "#{@player2} ваш ход y:"
  end

  number_cell = gets.to_i

  while number_cell < 1 || number_cell > 9 ||
        @table[number_cell - 1] == 'X' ||
        @table[number_cell - 1] == '0'
    puts 'Введите незанятое число'
    number_cell = gets.to_i
  end

  @table[number_cell - 1] = num == 1 ? 'X' : '0'
end

def check
  3.times do |i|
    if @table[i * 3] == @table[i * 3 + 1] && @table[i * 3 + 1] == @table[i * 3 + 2]
      return @table[i]
    elsif @table[i] == @table[i + 3] && @table[i + 3] == @table[i + 6]
      return @table[i]
    elsif (@table[2] == @table[4] && @table[4] == @table[6]) || (@table[0] == @table[4] && @table[4] == @table[8])
      return @table[i]
    end
  end
  '#'
end

def result
  if @win == 'X'
    puts "Победитель: #{@player1}"
  elsif @win == '0'
    puts "Победитель: #{@player2}"
  else
    puts 'Ничья'
  end
end

puts 'Введите имья 1-ого игрока:'
@player1 = gets.chomp
puts 'Введите имья 2-ого игрока:'
@player2 = gets.chomp
table_show
9.times do |i|
  if i.even?
    move(1)
  else
    move(2)
  end

  table_show

  next unless i > 4
  @win = check
  break if @win != '#'
end
result
# rubocop:enable all