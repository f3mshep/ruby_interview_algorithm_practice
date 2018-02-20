function merge(left, right){
  let results = []
  while( left.length > 0 && right.length > 0){
    if(left[0].startTime < right[0].startTime){
      results.push(left.shift())
    }
    else{
      results.push(right.shift())
    }
  }
  return results.concat(left).concat(right)
}

function mergeSort(unsortedArr){
  const mid = unsortedArr.length / 2
  let left = unsortedArr.slice(0, mid)
  let right = unsortedArr.slice(mid)
  if(unsortedArr.length <= 1){
    return unsortedArr
  }
  else{
    return merge(mergeSort(left), mergeSort(right))
  }
}

function isOverlap(meeting, currentMeeting){
  return currentMeeting.startTime <= meeting.endTime
}

function mergeMeeting(meetingArr){
  const sortedMeetings = mergeSort(meetingArr)
  let mergedMeetings = [sortedMeetings[0]]
  const lastMeeting = sortedMeetings[sortedMeetings.length - 1]
  for (const meeting of sortedMeetings) {
    let lastMeeting = mergedMeetings[mergedMeetings.length - 1]
    if( meeting.startTime <= lastMeeting.endTime){
      lastMeeting.endTime = Math.max(meeting.endTime, lastMeeting.endTime)
    }
    else{
      mergedMeetings.push(meeting)
    }
  }
  return mergedMeetings
}