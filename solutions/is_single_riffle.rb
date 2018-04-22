# Given an array of shuffled integers, determine if it is a single riffle
# shuffle of the two halves  

def is_single_riffle(shuffled, left, right)
    
    shuffled.each do |card|
        if card == left.first
            left.shift
        elsif card == right.first
            right.shift
        else
            return false
        end
    end
    true
end