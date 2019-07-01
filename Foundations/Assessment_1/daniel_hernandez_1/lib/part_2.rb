def element_count(array)
    hash = Hash.new(0)
    array.each {|el| hash[el] += 1}
    hash
end

def char_replace!(str,hash)
    str.length.times do |index|
        index -= 1 
        if hash.has_key?(str[index])
            str[index] = hash[str[index]]
        end
    end
    str
end

def product_inject(array)
    array.inject {|sum,num| sum * num }
end