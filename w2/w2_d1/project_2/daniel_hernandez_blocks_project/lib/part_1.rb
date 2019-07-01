require ("byebug")

def select_even_nums(array)
    array.select(&:even?)
end

def reject_puppies(array)
    array.reject {|hash| hash["age"] < 3}
end

def count_positive_subarrays(arr)
    arr.count{|array| array.sum > 0}
end

def aba_translate(str)
    tran_word = ""
    vol = "aeiou"

    str.each_char do |letter|
        #debugger
        if "aeiou".include?(letter)
            tran_word <<  letter + "b" + letter 
        else 
            tran_word <<letter
        end
    end
    tran_word
end

def aba_array(array)
    array.map{|word| aba_translate(word)}
end
