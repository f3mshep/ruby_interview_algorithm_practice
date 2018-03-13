# Given a string and an index pointing to an open parenthesis, return the index
# of the corresponding closing parenthesis.

def matching_paren(string, pos)
  index = pos
  open_count = 0
  raise "No parenthesis found at #{pos}" if string[pos] != "("
  while index < string.size
    curr_ch = string[index]
    if curr_ch == "("
      open_count += 1
    elsif curr_ch == ")"
      open_count -= 1
    end
    return index if open_count == 0
    index += 1
  end
end
