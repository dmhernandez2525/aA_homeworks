def my_uniq(array)
    new_array = []
    array.each{|ele| new_array << ele unless new_array.include?(ele)}
    new_array
end