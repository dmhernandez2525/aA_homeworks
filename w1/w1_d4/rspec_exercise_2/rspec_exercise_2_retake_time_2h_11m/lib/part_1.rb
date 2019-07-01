def partition(array,n)
    array_return = [[],[]]
    array.each do |num|
        if num >= n
            array_return[1] << num
        else
            array_return[0] << num
        end
    end
    array_return
end
require ("byebug")

def merge(hash_1,hash_2)
    hash = Hash.new(0)
    hash_1.each {|k,v|hash[k] = v}
    hash_2.each {|k,v|hash[k] = v}
    hash 
end

def censor(sentence,bad)
    sentence = sentence.split.map do |word|
        if bad.include?(word.downcase) 
         vowle_remove(word)
        else
         word
        end
    end
    sentence.join(" ")

end

def vowle_remove(word)
    vowles= "aeiou"
   word = word.chars.map do |letter|
        if vowles.include?(letter.downcase)
            "*"
        else
            letter
        end
    end
    word.join("")
end

def power_of_two?(n)
    i = 0
    counter = 0
    while counter <  n
        counter = 2 ** i
         i +=1
    end
    counter == n
end

