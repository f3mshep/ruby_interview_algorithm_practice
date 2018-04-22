# Presented with an array of alphabetically sorted words, find the point at which the array loops back to the
# beginning of the array

require 'pry'

words = [
  'ptolemaic',
  'retrograde',
  'supplant',
  'undulate',
  'xenoepist',
  'asymptote',
  'babka',
  'banoffee',
  'engender',
  'karpatka',
  'othellolagkage',
]

def alpha_value(word)
  alphabet = ('a'..'z').to_a
  alphabet.index(word[0])
end

def find_rotation_point(words)

  floor = -1
  ceil = words.length

  while floor + 1 < ceil
    distance = ceil - floor
    half_distance = distance / 2
    guess = floor + half_distance
    value = words[guess]
    if alpha_value(value) < alpha_value(words.first)
      ceil = guess
    else
      floor = guess
    end
  end
  return guess
end
