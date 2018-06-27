def string_decoder(str)
  int_arr = []
  chunk = ""
  res = []
  str.each_char do |char|
    if char == "[" && !chunk.empty?
        res.push(chunk)
        chunk = ""
    elsif char == "]" && chunk.empty?
        times = int_arr.pop
        res.push(chunk * times)
        chunk = ""
    elsif char.to_i != 0
      int_arr.push(char.to_i)
    elsif letter?(char)
      chunk += char
    end
  end
  res.join * int_arr.pop
end

def letter?(char)
  char =~ /[A-Za-z]/
end