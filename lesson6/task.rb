print 'Сколько лет будем копить: '
years = gets.to_i

print 'Какую сумму будем откладывать в месяц: '
money = gets.to_f

summa = 0

1.upto(years) do |y|
  1.upto(12) do |month|
    summa += money
    puts "- Год #{y} месяц #{month}, отложено: #{summa}"
  end
end
