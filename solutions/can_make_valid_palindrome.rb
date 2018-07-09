#  Given a non-empty string s, you may delete at most one character. Judge
# whether you can make it a palindrome.

def can_make_valid_palindrome(s)
  is_palindrome_helper?(s)
end

def is_palindrome_helper?(s, removed = false, coords = nil)
  if coords
    left, right = coords.first, coords.last
  else
    left, right = 0, s.length - 1
  end
  while left < right
    if s[left] == s[right]
      left +=1
      right -=1
    elsif removed
      return false
    else
      return true if is_palindrome_helper?(s, true, [left + 1, right])
      return is_palindrome_helper?(s, true, [left, right - 1])
    end
  end
  true
end