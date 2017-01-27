numbers = [73, 46, 67, 45, 69, 11, 34, 90, 94, 13, 49, 42]

class Array

  def bubble_sort
    swapped = true

    while swapped
      swapped = false

      for i in 0..(self.count - 2) do

        if self[i] > self[i + 1]

          # SLOW WAY
          # temp = self[i]
          # self[i] = self[i + 1]
          # self[i + 1] = temp

          # NINJA WAY
          self[i], self[i + 1] = self[i +1], self[i]
          swapped = true

        end

      end

    end
    self.inspect

  end

end

puts numbers.bubble_sort

huge_array = []

100000.times do
  huge_array.push(rand(1000000))
end
puts huge_array.sort.inspect
