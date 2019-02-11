name = gets.chomp
file = Dir[name.to_s].empty?
if file
  puts 'Such a file does not exist'
else
  input = File.open(name, 'r')
  while line = input.gets
    puts line
  end
end
