def partition(array,n)
    first_subarray = []
    second_subarray = []
    array.each do |num|
        if num >= n
            second_subarray << num
        else
            first_subarray << num
        end
    end
    [first_subarray, second_subarray]
end


def merge(hash_1,hash_2)
    hash_1.merge(hash_2)
end

# def merge(hash_1,hash_2)
#     new_hash = {}
#     hash_1.each {|k,v| new_hash[k] = v}
#     hash_2.each {|k,v| new_hash[k] = v}
#     new_hash
# end



def censor(str,arr)
    str = str.split.map do |word|
        if arr.map(&:downcase).include?(word.downcase)
            censord_word = word.split("").map do |letter|  
                if "aeiou".include?(letter.downcase)
                    "*"
                else
                    letter
                end
            end
            censord_word.join("")
        else
            word
        end
    end
    str.join(" ")
end



def power_of_two?(n)
    i=1
    x=0
    return true if n == 1
    while x < n
        x = 2**i
        i += 1
    end
     x == n
end