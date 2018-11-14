words = {
  'dog' => %w[собака],
  'frog' => %w[лягушка жаба квакушка],
  'cat' => %w[кошка кот],
  'mouse' => %w[мышь крыса]
}
puts 'Enter для прекращения работы програмы'
loop do
  print 'Введите слово:'
  word = gets.strip
  break if word == ''

  translation = words[word]
  puts "Количество переводов: #{translation.size}"
  puts 'Переводы:'
  translation.each { |t| puts t.to_s }
end
