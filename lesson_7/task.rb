print 'Сколько вам лет? '
age = gets.to_i

print 'Хотите играть? (Y/N) '
answer = gets.strip.capitalize

print 'Цена 10 дол = 1 попытка: '
money = gets.to_i

if answer == 'Y' && age >= 18
  puts 'Хорошо, поиграем!'
  try = money / 10
  try.times do
    x = rand(0..5)
    y = rand(0..5)
    z = rand(0..5)
    puts 'Введите Enter чтобы дернуть ручку'
    gets
    if x.zero? && y.zero? && z.zero?
      puts 'Ваш баланс обнулен!' && money = 0
    elsif x == 1 && y == 1 && z == 1
      puts 'Вам зачислено 10 долларов' && money += 10
    elsif x == 2 && y == 2 && z == 2
      puts 'Вам зачислено 20 долларов' && money += 20
    elsif x == 3 && y == 3 && z == 3
      puts 'Вам зачислено 30 долларов' && money += 30
    elsif x == 4 && y == 4 && z == 4
      puts 'Вам зачислено 40 долларов' && money += 40
    elsif x == 5 && y == 5 && z == 5
      puts 'Вам зачислено 50 долларов' && money += 50
    elsif x == 6 && y == 6 && z == 6
      puts 'Вам зачислено 60 долларов' && money /= 2
    elsif x == 7 && y == 7 && z == 7
      puts 'Вам зачислено 70 долларов' && money += 70
    elsif x == 8 && y == 8 && z == 8
      puts 'Вам зачислено 80 долларов' && money += 80
    elsif x == 9 && y == 9 && z == 9
      puts 'Вам зачислено 90 долларов' && money += 90
    elsif x == 1 && y == 2 && z == 3
      puts 'Вам зачислено 123 долларов' && money += 123
    else
      puts 'Випало плохое число' && money -= 11
    end
    puts "#{x}#{y}#{z}"
    puts "Осталось денег: #{money}$"
  end

  puts "Вы пориграли и теперь должны денег: #{-money}$" if money < 0
end
