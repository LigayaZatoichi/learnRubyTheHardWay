print "How old are you? "
age = gets.chomp.to_i
print "How tall are you in inches? "
height = gets.chomp
print "How much do you weigh in lbs? "
weight = gets.chomp

puts "So, you are #{age} years old, you stand #{height} inches tall, and you weigh approximately #{weight} lbs, is this correct?"

puts "In five years, how old will you be? #{age + 5}"
