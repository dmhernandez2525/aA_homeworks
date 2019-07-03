
def range(bottem,top)
    return [bottem] if top == bottem + 1
    [bottem] + range(bottem + 1, top)
end

def it_range(bottem,top)
    i = bottem
    array = [bottem,]
    while i < top - 1
        array << (i += 1)
    end
    array
end



#1 => [2 => 3 => 4 => 5]

# p range(1, 7)  #=> [1,2,3,4,5,6,]
# p range(5, 10) #=> [5,6,7,8,9,]
# p range(-2, 18) #=> [-2,-1,0,1,2,3,4,5,6,7,8,9,10,11]
# p range(3, 22) #=> [3,4,5,6,7,8,ect...]





# Warmup
# Write a recursive method, range, that takes a start and an end and 
# returns an array of all numbers in that range, exclusive. For example, 
# range(1, 5) should return [1, 2, 3, 4]. If end < start, you can return 
# an empty array.
# Write both a recursive and iterative version of sum of an array.




def expo_1(number, power)
    return 1 if power == 0
    return number if power == 1 

    number * expo(number, power - 1)
end

def expo(number, power)
    return 1 if power == 0
    return number if power == 1
    if power.even?
        expo(number, (power / 2)) ** 2
    else
        number * expo(number, (power - 1) / 2) ** 2
    end

end
    


    # # recursion 2
    # p expo(4, 2) #= 16
    # p expo(10, 4) #= 10000
    # p expo(2, 6) #= 32            
    # p expo(4, 0) #= 1
    # p expo(4, 6) #= 
    # p expo(10, 4) #= 



    # new_array = []
    # new_array + old_array[0]

# def my_dup(old_array)
#     # return old_array[0].dup if old_array.is_a?(Array)
#     new_array = []
#     old_array.each{|sub|  new_array << sub.dup } #+ my_dup([old_array[1..-1]])
#     new_array
# end

# def my_dup(array)
#     final_arr = []
#     array.each do |arr|
#         new_array = []
#         arr.each do |ele|
#             new_array << ele
#         end
#         final_arr << new_array
#     end
#     final_arr
# end






def my_dup(old_array)
    new_array = []
    old_array.each do |ele|
        if !ele.is_a?(Array)
            new_array << ele
        else
            new_array << my_dup(ele)
        end
    end
    new_array
end


robot_parts = [
    "string",
    ["nuts", "bolts", "washers"],
    ["capacitors", "resistors", ["inductors"]]
]

robot_parts_copy = my_dup(robot_parts)

# shouldn't modify robot_parts
robot_parts_copy[1] << "LEDs"
# but it does
p robot_parts[1] # => ["capacitors", "resistors", "inductors", "LEDs"]
puts
p robot_parts_copy
puts
p robot_parts