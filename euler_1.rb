
1.upto 999 do |num|
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz: #{num}"
  elsif num % 3 == 0
    puts "Fizz: #{num}"
  elsif num % 5 == 0
    puts "Buzz: #{num}"
  else
    puts num
  end
end
