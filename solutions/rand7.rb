# Given a function that returns 1-5 randomly, define a function that
# will return 1-7 randomly. Randomness must be uniform. Must use given function

def rand5
    rand(1..5)
end

def roll
    rand5 + rand5
end

def rand7
    answer = roll
    while answer > 7
        answer = roll
    end
    answer
end