def my_map(array,&block)
    new_array = []
    array.each{|el|new_array << block.call(el)}

    new_array
end

def my_select(array,&prc)
    new_array = []
     array.each{|el| new_array << el if prc.call(el)}
    new_array 
end

def my_count(array,&prc)
    num_true = 0
    array.each{|el| num_true += 1 if prc.call(el)}
    num_true
end

def my_any?(array,&prc)
    array.each {|el| return true if prc.call(el)}
    false
end

def my_all?(array,&prc)
    array.each {|el| return false if !prc.call(el)}
    true
end

def my_none?(array,&prc)
    array.each {|el| return false if prc.call(el)}
    true
end