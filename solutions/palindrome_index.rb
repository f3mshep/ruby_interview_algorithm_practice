require 'pry'

def palindrome_index(str)
  return -1 if is_palindrome(str)
  chars = str.chars
  chars.each_with_index do |char, index|
    chars_dup = chars.clone
    chars_dup.delete_at(index)
    return index if is_palindrome(chars_dup)
  end
  -1
end

def is_palindrome(str)
  str_len = str.length
  mid = str_len / 2
  if str_len.odd?
    str[0...mid] == str[mid + 1..-1]
  else
    str[0...mid] == str[mid..-1]
  end
end