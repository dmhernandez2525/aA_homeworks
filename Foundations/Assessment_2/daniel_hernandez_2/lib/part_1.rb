def my_reject(array,&prc)
    new_array = []
    array.each{|el| new_array << el if !prc.call(el)}

    new_array
end

def my_one?(array,&prc)
    counter = 0

    array.each{|ele| counter += 1 if prc.call(ele)}
    if counter == 1
        return true
    else 
        return false
    end
end

def hash_select(hash,&prc)
    new_hash = {}
    hash.each {|k,v|new_hash[k] = v if prc.call(k,v)} 
    new_hash
end

def xor_select(array,prc_1,prc_2)
    new_array = []
    array.each do |ele|
        if prc_1.call(ele) && prc_2.call(ele)
            
        elsif !prc_1.call(ele) && prc_2.call(ele) || prc_1.call(ele) && !prc_2.call(ele)
            new_array << ele
        end
    end
    new_array
end

def proc_count(value,array)
    counter = 0
    array.each{|prc|counter += 1 if prc.call(value)}
    counter
end