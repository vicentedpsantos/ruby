class Array
  def quicksort
    return [] if empty?
    # [34, 2, 1, 4, 3] Starting array

    pivot = delete_at(rand(size)) #First step is to pick the pivot number at random
    #=> [34, 2, 4, 3]

    left, right = partition(&pivot.method(:>))
    #=> left = [34, 2]
    #=> right = [4, 3]

    return *left.quicksort, pivot, *right.quicksort
    #=> return splat arguments to recursevely call the quicksort method on itself
  end
end

arr = [34, 2, 1, 32, 45, 323, 32, 123, 4, 6, 545, 434, 32, 4, 3]
p arr.quicksort
