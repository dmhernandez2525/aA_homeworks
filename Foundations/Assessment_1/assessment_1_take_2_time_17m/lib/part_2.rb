def element_count(array)
    hash = Hash.new(0)
    array.each {|ele| hash[ele] += 1}
    hash
end

def char_replace!(str,hash)
    str.each_char.with_index do |ele,index|
        if hash.key?(ele)
            str[index] = hash[ele]
        end
    end
    str
end

def product_inject(array)
    array.inject{|sum,num|sum*num}
end