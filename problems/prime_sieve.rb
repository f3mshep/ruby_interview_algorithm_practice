def sieve(max)
  primes = (0..max).to_a
  primes[0], primes[1] = nil, nil
  current_num =  2
  primes.each do |number|
    next if number.nil?
    break if number**2 > max
    # starting with square of prime, find all multiples 
    (number**2).step(max, number) {|num|primes[num] = nil}
  end
  # return all numbers that remain
  primes.compact
end

primes = sieve(2 * (10**8))

File.write('/prime/primes.txt', primes)