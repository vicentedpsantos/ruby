def bubble_sort(array)
  n = array.length

  loop do
    # [1, 4, 1, 3, 6, 8, 4, 3, 6, 8, 3, 2, 5, 3]

    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

p bubble_sort([1, 4, 1, 3, 6, 8, 4, 3, 6, 8, 3, 2, 5, 3])
