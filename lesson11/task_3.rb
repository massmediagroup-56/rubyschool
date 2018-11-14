words = {
  'dog' => %w[собака],
  'frog' => %w[лягушка],
  'cat' => %w[кошка],
  'mouse' => %w[мышь]
}
print 'Введите слово: '
word = gets.strip

translation = words[word]
puts 'Перевод:'
puts translation.to_s.delete('"[]')
