print '(R)ock, (S)cissors, (P)aper? '
s = gets.strip.capitalize
# user choice:
if s == 'R'
  user_choice = :rock
elsif s == 'S'
  user_choice = :scissors
elsif s == 'P'
  user_choice = :paper
else
  puts "Can't understand what you want, sorry..."
  exit
end

arr = %i[rock scissors paper]
# genery computer choice
computer_choice = arr[rand(0..2)]

puts "User choice: #{user_choice}"
puts "Computer choice: #{computer_choice}"

matrix = [
  # draw:
  %i[rock rock draw],
  %i[scissors scissors draw],
  %i[paper paper draw],
  # rock:
  %i[rock scissors first_win],
  %i[rock paper second_win],
  # scissors:
  %i[scissors rock second_win],
  %i[scissors paper first_win],
  # paper:
  %i[paper rock first_win],
  %i[paper scissors second_win]
]

matrix.each do |item|
  next unless item[0] == user_choice && item[1] == computer_choice

  if item[2] == :first_win
    puts 'User wins!'
  elsif item[2] == :second_win
    puts 'Computer wins!'
  elsif  item[2] == :draw
    puts 'Draw'
  end
  exit
end
