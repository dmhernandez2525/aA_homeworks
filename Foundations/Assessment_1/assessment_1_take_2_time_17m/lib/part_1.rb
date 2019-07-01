def is_prime?(num)
    return false if num < 2
    return false if (2...num).any?{|ele|num % ele === 0}
    true
end

def nth_prime(n)
    array_of_primes = []
    primes = 1
    while array_of_primes.length < n
        if is_prime?(primes)
            array_of_primes << primes
        end
        primes +=1 
    end
    array_of_primes[-1]
end

def prime_range(min,max)
    primes = []
    (min..max).each {|num|primes << num if is_prime?(num)}
    primes
end