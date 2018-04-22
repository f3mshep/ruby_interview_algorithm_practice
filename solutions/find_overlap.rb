# Given two rectangles, represented as such: 
# rect_b = {

#   # coordinates of bottom-left corner
#   left_x: 3,
#   bottom_y: 3,

#   # width and height
#   width: 2,
#   height: 2
# }
# return the overlapping rectangle area. If there is no overlap, return nil.

def find_overlap(start_a, length_a,  start_b, length_b)
  highest_start = [start_a, start_b].max
  end_a = start_a + length_a 
  end_b = start_b + length_b
  lowest_end = [end_a, end_b].min
  return nil if highest_start >= lowest_end
  overlap_len = lowest_end - highest_start
  [highest_start, overlap_len]
end


def find_rect_overlap(rect_a, rect_b)
  x_overlap = find_overlap(rect_a[:left_x], rect_a[:width], rect_b[:left_x], rect_b[:width])
  y_overlap = find_overlap(rect_a[:bottom_y], rect_a[:height], rect_b[:bottom_y], rect_b[:height])
  return nil if x_overlap.nil? || y_overlap.nil?
  {left_x: x_overlap.first, width: x_overlap.last, bottom_y: y_overlap.first, height: y_overlap.last}
end