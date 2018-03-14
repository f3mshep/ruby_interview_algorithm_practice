# Given a list of scores and the max possible score,
# return a sorted list of scores
# Do better than O(n log n)

def score_sort(scores, max)
  counts = Array.new(max + 1, 0)
  results = []
  scores.each do |score|
    counts[score] += 1
  end
  counts.each_with_index do |amount, score|
    # How is this O(n)?
    # Take a look at what we are iterating over
    # an array representing unique digits, times the number
    # that digit appears, which results in the size of the original array
    amount.times do
      results.push(score)
    end
  end
  results
end

# Speed Complexity is O(n)
# Space Complexity is O(n)