require 'pry'
# this probably works, and it is optimized for speed
# gross, gross code though
def bad_valid_syntax(str_sample)
  index = 0
  openers = ["[","{", "["]
  opener_stack = {
    "{":[],
    "(":[],
    "[":[]
  }
  while index < str_sample.size
    curr_char = str_sample[index]
    if openers.include?(curr_char)
      opener_stack[curr_char].push(index)
    elsif curr_char == "}"
      start = opener_stack["{"].pop
      return false if (start..index).includes?(opener_stack["["].last)
      return false if (start..index).includes?(opener_stack["("].last)
    elsif curr_char == ")"
      start = opener_stack["("].pop
      return false if (start..index).includes?(opener_stack["{"].last)
      return false if (start..index).includes?(opener_stack["["].last)
    elsif curr_char =="]"
      start = opener_stack["["].pop
      return false if (start..index).includes?(opener_stack["{"].last)
      return false if (start..index).includes?(opener_stack["("].last)
    end
    index += 1
  end
  opener_stack.all?{|opener|opener.empty?}
end


# My refactored solution. Love stacks!
# Speed Complexity O(n)

def valid_syntax(str_sample)
  stack = []
  opener_pairs = {
    "{"=>"}",
    "("=>")",
    "["=>"]"
}
  str_sample.each_char do |char|
    if char == "[" || char == "{" || char == "("
      stack.push(char)
    elsif char == "]" || char == "}" || char == ")"
      opener = stack.pop
      return false if opener_pairs[opener] != char
    end
  end
  stack.empty?
end
