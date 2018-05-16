require 'pry'

FIXNUM_MAX = (2**(0.size * 8 -2) -1)
FIXNUM_MIN = -(2**(0.size * 8 -2))

def divide_two_integers(dividend, divisor)
  return FIXNUM_MAX if dividend > FIXNUM_MAX || dividend < FIXNUM_MIN
  current_total = dividend.abs
  subtractor = divisor.abs
  result = 0
  is_negative = get_sign(dividend, divisor)
  while current_total >= 0
    return is_negative ? -(result) : result if current_total - subtractor < 0
    current_total -= subtractor
    result += 1
  end
  is_negative ? -(result) : result
end

def get_sign(dividend, divisor)
  if dividend > 0 && divisor > 0
    false
  elsif dividend < 0 && divisor < 0
    false
  else
    true
  end
end

binding.pry