# Given a number, n, return a flat array that would be the result of traversing
# a matrix of the numbers from 1-n in a spiral fashion.
# ex. 4 would be
# 1,2,3,4
# 5,6,7,8
# 9,10,11,12
#13,14,15, 16

# => [1,2,3,4,8,12,16,15,14,13,9,5, 6,7,11,10]ge

def enter_the_matrix(n)
  matrix = generate_grid(n)
  res = []
  is_horz_first = true
  is_vert_first = false
  is_horizontal = true
  while res.length < n * n
    if is_horizontal
      if is_horz_first
        while !matrix.first.empty?
          num = matrix.first.shift
          res.push(num)
        end
        matrix.shift
        is_horz_first = false
      else
        while !matrix.last.empty?
          num = matrix.last.pop
          res.push(num)
        end
        matrix.pop
        is_horz_first = true
      end
      is_horizontal = false
    else
      if is_vert_first
        matrix.reverse_each do |row|
          num = row.shift
          res.push(num)
        end
        is_vert_first = false
      else
        matrix.each do |row|
          num = row.pop
          res.push(num)
        end
        is_vert_first = true
      end
      is_horizontal = true
    end
  end
  res
end

def generate_grid(n)
  count = 1
  res = []
  n.times do
    chunk = []
    n.times do
      chunk.push(count)
      count += 1
    end
    res.push(chunk)
  end
  res
end

def enter_the_matrix(n)
  #shift the first row
  #pop each column
  #pop the last row
  #shift the first row
end