input = File.open('test.txt', 'r')

total = 0

while line = input.gets
  puts line
  total += line.split(',')[1].to_i
end

input.close

puts ''
puts "Total: #{total}"
