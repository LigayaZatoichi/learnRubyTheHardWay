file_name = ARGV.first
lithsph = open(file_name).read.downcase.gsub(/[s]/i, "th").gsub(/[r]/i, "w")

puts lithsph
