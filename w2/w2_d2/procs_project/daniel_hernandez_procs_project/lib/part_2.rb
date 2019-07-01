def reverser(str,&prc)
    prc.call(str.reverse)
end

def word_changer(sentence,&prc)
    new_sen = sentence.split.map{|word| prc.call(word)}
    new_sen.join(" ")
end 

def greater_proc_value(num,prc_1,prc_2)
    num_1 = prc_1.call(num)
    num_2 = prc_2.call(num)
    if num_1 > num_2
        return num_1
    else 
        return num_2
    end

end

def and_selector(array,prc_1,prc_2)
    array.select {|el| prc_1.call(el) && prc_2.call(el)}
end

def alternating_mapper(array,prc_1,prc_2)
    new_array = []
    array.each_with_index do |ele,index|
        if index.even?
            new_array << prc_1.call(ele)
        else
            new_array << prc_2.call(ele)
        end
    end
    new_array
end