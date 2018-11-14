puts 'Сколько вам лет? '
puts 'Если Вы не совершеннолетний веденные деньги возврату не подлежат'
age = gets.to_i

print 'Хотите играть? (Y/N) '
answer = gets.strip.capitalize

print '5$ - одна попытка, введите сумму:  '
money = gets.to_i

try = money / 5

puts 'Вы еще не совершеннолетний' if age < 18

if answer == 'Y' && age >= 18
  puts 'Хорошо, поиграем!'

  add_money_proc = lambda { |sum, cash|
    puts "Вам зачислено #{sum} долларов"
    cash + sum
  }

  sub_money_proc = lambda { |sum, cash|
    puts "Вы потеряли #{sum} долларов"
    cash - sum
  }

  actions =
    {
      '000' => lambda { |_money|
        puts 'Ваш баланс обнулен!'
        0
      },
      '111' => [10, add_money_proc],
      '222' => [20, add_money_proc],
      '333' => [30, add_money_proc],
      '444' => [40, add_money_proc],
      '555' => [50, add_money_proc],
      '666' => lambda { |cash|
                 puts 'Вы потеряли половину суммы'
                 cash / 2
               },
      '777' => [70, sub_money_proc],
      '888' => [80, sub_money_proc],
      '999' => [90, sub_money_proc],
      '123' => [123, sub_money_proc],
      '321' => [321, sub_money_proc]
    }

  try.times do
    puts 'Введите Enter чтобы дернуть ручку'
    gets

    num = rand(0..9).to_s + rand(0..9).to_s + rand(0..9).to_s

    puts "Выпало #{num}"

    if actions.key?(num)
      if actions[num].is_a?(Array)
        money = actions[num][1].call(actions[num][0], money)
      elsif actions[num].is_a?(Proc)
        money = actions[num].call(money)
      end
    else
      money -= 5
    end

    puts "Осталось денег: #{money} долларов"

    if money.zero?
      puts 'У вас не осталось денег, приходите еще'
      break
    elsif money < 0
      puts 'Вы продали всё свое имущество, чтобы расплатиться'
      break
    end
  end
end
