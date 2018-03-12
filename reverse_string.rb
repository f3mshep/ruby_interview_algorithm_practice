#Reverse a string in place

def reverse_str(str)
  first_index = 0
  mid = str.size / 2
  while first_index < mid
    last_index = str.size - 1 - first_index
    first_char = str[first_index]
    last_char = str[last_index]
    str[first_index] = last_char
    str[last_index] = first_char
    first_index += 1
  end
  str
end

#Operates at O(log n)
#Space Complexity O(1)