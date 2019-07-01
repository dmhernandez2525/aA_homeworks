def is_prime?(num)
    return false if num < 2
    (2...num).each {|el| return false if num % el == 0}
    true
end

def nth_prime(n)
    asrray = []
    i = 2
    while asrray.length < n
        asrray << i if is_prime?(i) 
        i += 1
    end
    asrray[-1]
end
# def nth_prime(n)
#     n+=1
#     while true
#         if is_prime?(n) 
#             return n
#         end
#         n+=1
#     end
# end
def prime_range(min,max)
    prime_array = []
    (min..max).each do |num|
        prime_array << num if is_prime?(num)
    end
    prime_array
end
