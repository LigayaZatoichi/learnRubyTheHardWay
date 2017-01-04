user_name = ARGV.first
prompt = '> '

puts "Hi, #{user_name}!"
puts "I'd like to ask you a few questions.."
puts "Are you human #{user_name}? "
puts prompt
likes = $stdin.gets.chomp

puts "What is the name of your home planet, #{user_name}?"
puts prompt
lives = $stdin.gets.chomp

puts "What is your favorite spacecraft? ", prompt
spacecraft = $stdin.gets.chomp

puts """
All right, so you said #{likes} about being human.
Your home planet name is #{lives}. No clue what galaxy that is in.
And your favorite spacecraft is #{spacecraft}. What?
"""
