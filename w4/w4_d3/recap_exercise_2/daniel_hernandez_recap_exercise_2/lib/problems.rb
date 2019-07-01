# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple 
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    num_3 = [num_1,num_2].max
    num_4 = [num_1,num_2].min
    multiplyer = 1
    while true
        num = num_3 * multiplyer
        return num if  num  % num_4 == 0
            multiplyer +=1
    end
end



# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)    
    hash = Hash.new(0)
    (0...str.length - 1).each do |i|
        hash[str[i] + str[i + 1]] += 1
    # str.each_char.with_index do |char, idx|
    #     hash[char + str[idx + 1]] += 1 if idx < str.length - 2
    end
    sorted = hash.sort_by{|k,v|v}
    sorted[-1][0]
end



class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        hash = {}
        self.each {|k,v| hash[v] = k}
        hash
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        array = []
        (0...self.length).each do |idx1|
            (0...self.length).each do |idx2|
                array << [self[idx1], self[idx2]]  if idx1 <= idx2
            end
        end
        array.count {|arr| arr.sum == num}
    end 


    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    def bubble_sort(&prc)
        prc ||= Proc.new {|a,b| a <=> b }
            sorted = false
            while !sorted
                sorted = true
                (0...self.length - 1).each do |i|
                    if prc.call(self[i], self[i + 1]) == 1
                       sorted = false 
                       self[i] , self[i +1] = self[i + 1] , self[i]
                    end
                end
            end
        self
    end
end
