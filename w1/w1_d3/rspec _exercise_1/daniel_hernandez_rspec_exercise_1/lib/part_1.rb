def average(num1,num2)
    (num1 + num2) / 2.0
end

def average_array(array)
    array.sum / (array.length * 1.0)
end

def repeat(str,num)
    str * num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
      new_word = str.split.map.with_index do |word,idx|
            if idx % 2 ==0
                  word.upcase
            else
                  word.downcase
            end
      end
      new_word.join(" ")
end

# def alternating_case(str)
#     new_str = ""
#     str.split.each_with_index do |word,idx|
#         puts word
#         puts idx
#       if idx  % 2 == 0 
#             new_str << word.upcase + " "
#       else
#             new_str << word.downcase + " "
#       end
#     end
#     new_str.split(" ").join(" ")
# end
