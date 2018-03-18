# Space Complexity O(n)
# Time Complexity O(n)

def any_palindrome(letters)
  histo = Hash.new(0)

  odds_allowed = letters.size.odd?
  letters.each_char do |letter|
    histo[letter] += 1
  end

  histo.keys.each do |key|
    if histo[key].odd?
      if odds_allowed
        odds_allowed = false
      else
        return false
      end
    end
  end

  true
end
