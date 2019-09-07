puts 'Welcome to "Get My Number"!'
puts 'What\'s your name?'

name = gets.chomp

puts "Welcome, #{name}!"

puts 'I\'ve got a random number between 1 and 100.'
puts 'Can you guess it?'
target = rand(100) + 1

remaining_guesses = 10
num_guesses = 0
guessed_it = false

while remaining_guesses > 0 
  puts "#{remaining_guesses} guesses remaining."
  puts 'Make a guess:'
  guess = gets.to_i
  remaining_guesses -= 1
  num_guesses += 1

  if guess < target
    puts 'Oops. Your guess was low.'
  elsif guess > target
    puts 'Oops. Your guess was high.'
  else
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
    break
  end
end

unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
