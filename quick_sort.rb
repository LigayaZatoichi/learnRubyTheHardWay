arr = [73, 46, 67, 45, 69, 11, 34, 90, 94, 13, 49, 42]

def quick_sort(arr)
  if arr.size <= 1
    return arr
  end  
    left = []
    right = []
    pivot = arr.pop

      arr.each do |n|
        n < pivot ? left << n : right << n
      end

    left = quick_sort(left)
    right = quick_sort(right)
    return left + [pivot] + right
end

puts quick_sort(arr)
