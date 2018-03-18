# Generate a word cloud from a string. Optimize for space and speed!

def word_cloud(word)
  word_cloud = Hash.new(0)
  current_word = ""
  word.each_char do |char|
    char = char.downcase
    if is_letter(char)
      current_word = current_word + char
    elsif !current_word.empty?
      word_cloud[current_word] += 1
      current_word = ""
    end
  end
  word_cloud[current_word] += 1 unless current_word.empty?
  word_cloud
end

def is_letter(char)
  ascii_code = char.ord
  ascii_code >= 97 && ascii_code <= 122
end