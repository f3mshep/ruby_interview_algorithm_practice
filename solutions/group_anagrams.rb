def group_anagrams(str_arr)
  sorted_histo = Hash.new{ |h, k| h[k] = [] }
  str_arr.each do |word|
    sorted = word.chars.sort
    sorted_histo[sorted] << word
  end
  sorted_histo.values
end