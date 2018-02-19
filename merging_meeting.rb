# We could use Ruby's built in sort, not sure
# if that would be acceptable in interview
def merge(left, right)
  results = []
  until left.length == 0 || right.length == 0
    if left.first.first < right.first.first
      results.push(left.shift)
    else
      results.push(right.shift)
    end
  end
  results.concat(left).concat(right)
end

def merge_sort(unsorted_arr)
  midpoint = unsorted_arr.length / 2
  left = unsorted_arr.slice(0, midpoint)
  right = unsorted_arr.slice(midpoint, unsorted_arr.length - midpoint)
  return unsorted_arr if unsorted_arr.length <= 1
  return merge(merge_sort(left), merge_sort(right))
end


def is_overlap(meeting, current_meeting)
  meeting.first <= current_meeting.last
end

def meeting_merge(meeting_list)
  sorted_meetings = merge_sort(meeting_list)
  current_meeting = sorted_meetings.first
  merged_meetings = []
  sorted_meetings.each do |meeting|
    #if the last meeting was pushed, current_meeting is reset to currently accessed meeting
    current_meeting = meeting if !current_meeting
    if is_overlap(meeting, current_meeting)
      current_meeting = [current_meeting[0], [meeting.last, current_meeting.last].max]
    else
      merged_meetings.push(current_meeting)
      current_meeting = nil
    end
  end
  # algorithm can only make 1 decision per element,
  # if the last meeting does not fall inside the currently
  # merged meeting, it therefore will not be pushed into the array.
  # We do the final check here to see if it can be merged or not
  unless is_overlap(sorted_meetings.last, merged_meetings.last)
    merged_meetings.push(sorted_meetings.last)
  end
  return merged_meetings
end

meeting_merge([[1,2], [7,9], [3,4], [5,6], [7,8]])