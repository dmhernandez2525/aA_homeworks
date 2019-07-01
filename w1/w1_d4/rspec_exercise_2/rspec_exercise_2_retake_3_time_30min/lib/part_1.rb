def partition(array,num)
    less = []
    more = []
    array.each do |number|
        if number < num
            less << number
        else
            more << number
        end
    end
    [less,more]
end

def merge(hash_1,hash_2)
    merged = {}
    hash_1.each {|k,v|merged[k] = v}
    hash_2.each {|k,v|merged[k] = v}
    merged
end

def censor(sentence,bad_words)
    sentence = sentence.split.map! do |word|
        if bad_words.include?(word.downcase)
            vowel_replace(word)
        else
            word
        end
    end
    sentence.join(" ")
end
def vowel_replace(word)
    new_word = ""
    vowles = "aeiou"
    word.each_char do |letter|
        if vowles.include?(letter.downcase)
            new_word << "*" 
        else
            new_word << letter
        end
    end
    new_word
end

def power_of_two?(num)
    product = 1
    while product < num
        product *= 2
    end
    product == num
end