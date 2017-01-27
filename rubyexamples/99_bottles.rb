def bottles_of_beer

  beer = 99

  beer.times do
    puts "#{beer} #{beer == 1 ? "bottle" : "bottles"} of beer on the wall, #{beer} #{beer == 1 ? "bottle" : "bottles"} of beer. Take one down pass it around, #{ beer - 1 == 0 ? "no more" : beer - 1} #{beer == 2 ? "bottle" : "bottles"} of beer on the wall."
    beer -= 1
  end
   puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store buy some more, 99 bottles of beer on the wall."
end

  have_beer = true

  while have_beer do
    bottles_of_beer
  end
