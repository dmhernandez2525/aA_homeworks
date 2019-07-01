def proper_factors(num)
    array_of_num = []
    (1...num).each {|ele| array_of_num << ele if num % ele == 0}
    array_of_num
end

def aliquot_sum(num)
    proper_factors(num).sum
end

def perfect_number?(num)
    new_num  = aliquot_sum(num)
    if new_num == num
        return true
    else 
        return false
    end
end

def ideal_numbers(n)
    array = []
    i = 1
    while array.length != n
        if perfect_number?(i)
            array << i
        end
        i += 1
    end
    array
end