#black box that returns a random number from 1-7
def rand7
    rand(1..7)
end

#Using rand7, define a method that returns a random number from 1-5
#with equal probablity

def rand5()
    answer = rand7
    while true
        return answer if answer <= 5
        answer = rand7
    end
end