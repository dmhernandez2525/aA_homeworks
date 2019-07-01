# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require ("byebug")
def largest_prime_factor(num)
    (2..num).inject(0) do |max,el|
        # debugger
        if el > max && prime?(el) && num % el == 0 
            el
        else 
            max
        end
    end
end

def prime?(num)
    return false if num < 2
    (2...num).each {|el| return false if num % el == 0}
    true
end

def unique_chars?(str)
    hash = Hash.new(0)
    str.each_char do |char|
        hash[char] +=1
        return false if hash[char] > 1  
    end
    true
end

def dupe_indices(array)
    hash = Hash.new{|hash,key| hash[key] = []}
    array.each_with_index do |char,idx|
        #debugger
        hash[char] << idx
    end
    hash.select {|k,v| v.length > 1}
end

def ana_array(array_1,array_2)
    hash_1 = Hash.new(0)
    hash_2 = Hash.new(0)
    array_1.each {|el| hash_1[el] += 1}
    array_2.each {|el| hash_2[el] += 1}
    hash_1 == hash_2
end