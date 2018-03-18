# **Binary Search**

# An efficient way to find if a number exists in an already sorted array.
# O(log n)

def binary_search(arr, target)
  mid = arr.length / 2
  left = arr.slice(0, mid)
  right = arr.slice(mid, arr.length)
  if arr.length < 2
    return arr.first == target
  elsif left.last >= target
    return binary_search(left, target)
  elsif right.last >= target
    return binary_search(right, target)
  else
    false
  end
end
