
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

def display_word(answer, letters_guessed)
  answer_letters = answer.split("")
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
end

answer = choose_word
letters_guessed = ['a', 'e', 's', 't', 'd', 'r', 'q']
guesses_left = 6

# Loop until there are no more guesses left.
while guesses_left > 0
  print "Guess a letter:"
  display_word(answer, letters_guessed)
  guess = gets.chomp
  puts "Your guess was #{guess}"
  letters_guessed.push(guess)
end

puts "You lost. ;-; Try again? <3"
exit(0)
display_word(answer, letters_guessed)
# Gets the letter guessed from the user.
