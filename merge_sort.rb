def mergesort(list)
  if list.length <= 1
    list
  else
    mid = (list.length / 2).floor
    left = mergesort(list[0..mid - 1])
    right = mergesort(list[mid..list.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

arr = [4, 1, 5, 1, 33, 22, 85, 32]
p mergesort(arr)
