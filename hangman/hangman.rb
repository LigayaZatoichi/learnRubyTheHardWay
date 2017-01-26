
def read_words
  puts "Opening file..."
  file = open('5desk.txt')
  words = file.read
  words_array = words.split("\r\n")
  words_good = words_array.map do |word| word.downcase if word.length >=5 and word.length <= 12 end
  words_good = words_good.compact
end

@words

# Picks a random number from 0 to ~52,000 and returns that word.
def choose_word
  @words = read_words unless @words
  return @words [rand @words.size]
end

def display_word(answer_letters, letters_guessed)
  display_array = []
  answer_letters.each do |letters|
    if letters_guessed.include? letters
      display_array.push(letters)
    else
      display_array.push("_")
    end
  end
# Displays array of underscores and letters_guesed, spaced-separated.
  puts display_array.join(" ")
  return display_array
end

answer_letters = choose_word.split("")
letters_guessed = []
guesses_left = 6
state = []

state = display_word(answer_letters, letters_guessed)

# Loop until there are no more guesses left.
while guesses_left > 0 && state.include?("_")
  print "Guess a letter: (#{guesses_left} guesses left.)"
  guess = gets.chomp
  letters_guessed.push(guess)
  if answer_letters.include?(guess)
    puts "Your guess, #{guess}, was correct!"
  else
    puts "No, you suck!"
    guesses_left -= 1
  end
  state = display_word(answer_letters, letters_guessed)
end


if guesses_left > 0
puts "You win."
else
puts "You lose! Good day, sir!"
puts "The word was '#{answer_letters.join("")}'."
end
