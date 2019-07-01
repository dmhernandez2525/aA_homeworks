def average(num_1,num_2)
    (num_1+num_2*1.0)/2
end

def average_array(array)
    (array.sum * 1.0) / array.length
end

def repeat(str,num)
    str * num
end

def yell(str)
    str.upcase + "!"

end

def alternating_case(sentence)
    sentence = sentence.split.each_with_index.map do |word,idx|
        if idx.even?
            word.upcase
        else
            word.downcase
        end
    end
    sentence.join(" ")
end