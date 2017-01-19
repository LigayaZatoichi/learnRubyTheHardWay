file_name = ARGV.first
words = open(file_name).read.downcase

array = words.split(" ")
count = Hash.new(0)

array.each do |word|
 count[word] = count[word] + 1
end

puts count.inspect
puts "Total unique words: #{count.size}"
