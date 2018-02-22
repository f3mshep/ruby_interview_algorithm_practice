
class Change
  attr_accessor :memo

  def initialize
    self.memo = {}
  end
  
  def recursive_get_change(amount, denom, index=0)
    coin = denom[index]
    unique_change_count = 0
    memo_key = [amount, index].to_s
    
    return self.memo[memo_key] if memo.include?(memo_key)

    return 1 if amount == 0
    return 0 if amount < 0
    return 0 if index == denom.length
    
    while amount >= 0
      unique_change_count += get_change(amount, denom, index + 1)
      amount -= coin
    end
    
    self.memo[memo_key] = unique_change_count
    unique_change_count
    
  end
  
end

money_maker = Change.new
money_maker.get_change(4, [1,2,3])
