require 'pry'


class BubbleSort


def sort(numbers)
  n = numbers.length
  loop do
    sorted = false
    (n-1).times do |i|
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        sorted = true
      end
    end
  break if !sorted
  end
  numbers
end

def insertion_sort(numbers)
  n = numbers.length
  sorted = []
  sorted << numbers[0]
  (n - 1).times do |i|
    sorted << numbers[i + 1]
    sorted.each_with_index do |num, index|
      if  num > sorted[i + 1] 
        sorted[index], sorted [i + 1] = sorted[i + 1], sorted[index]
      end
    end
  end
sorted

end
end

sorter = BubbleSort.new
a = [33, 55, 13, 46, 87, 42, 10, 34, 43, 56]

puts sorter.insertion_sort(a)
puts sorter.sort(a)
binding.pry
