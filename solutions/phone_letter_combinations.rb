# Given a string containing digits from 2-9 inclusive, return all possible letter
# combinations that the number could represent.
# A mapping of digit to letters (just like on the telephone buttons) is given
# below. Note that 1 does not map to any letters.

# Example:

# Input: "23"
# Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].




def phone_letter_combinations(digits)
  letter_finder = PhoneLetters.new(digits)
  letter_finder.combinator
end

class PhoneLetters

  attr_accessor :digits

  NUMBER_MAP = [
    [],
    [],
    "abc".chars,
    "def".chars,
    "ghi".chars,
    "jkl".chars,
    "mno".chars,
    "pqrs".chars,
    "tuv".chars,
    "wxyz".chars
  ]

  def initialize(digits)
    self.digits = digits.chars.map {|digit| digit.to_i}
  end

  def combinator
    return [] if digits.empty?
    stack_a = []
    stack_b = []
    digits.each_with_index do |digit,index|
      NUMBER_MAP[digit].each do |letter_digit|
        stack_a.each do |letter_cluster|
          stack_b << (letter_cluster + letter_digit)
        end
      end
      if stack_a.empty?
        stack_a = NUMBER_MAP[digit]
      else
        stack_a = stack_b
        stack_b = []
      end
    end
    stack_a
  end

end

# this solution somehow beats 100 percent of other leetcode submissions for this
# problem, runs at 36ms