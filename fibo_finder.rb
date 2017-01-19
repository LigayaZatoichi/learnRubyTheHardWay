@hash = Hash.new
@hash[0] = 0
@hash[1] = 1
@hash[2] = 2
@sum = 2

def fibo_finder(num)

  if @hash[num].nil?
    @hash[num] = fibo_finder(num - 1) + fibo_finder(num - 2) #USE OF RECURSIVE CODE CALLS BACK ON ITSELF, FIBO_FINDER#
    if @hash[num].even?
      @sum += @hash[num]
    end
  end
  return @hash[num]
end

puts @hash
puts fibo_finder(32)
