def palindrome?(str)
    new_str = ""
    idx = (str.length - 1)
    while idx > -1
        new_str << str[idx]
        idx -= 1
    end
    new_str == str
end


def substrings(str)
    sub_strings = []
    (0...str.length).each do |start_idx|
        (start_idx...str.length).each do |end_idx|
        sub_strings << str[start_idx..end_idx]
        end 
    end
    sub_strings
end

# def palindrome?(str)
#     str.each_char.with_index do |letter,idx|
#         return false if letter != str[-idx -1]
#     end
#     true
# end

# def substrings(str)
#     array = []
#     str.split("").each_with_index do |str_1,idx_1|
#         str.split("").each_with_index do |str_2,idx_2|
#             if idx_2 > idx_1
#                 array << str_1 + str_2
#             end
#         end
#     end
#     array
# end




# def substrings(str)
#     sub_strings = []
#      str.each_char.with_index do |char,index |
#         sub = char
#         (str[index]..str[-1]).each do |letter|
#             sub += letter
#             sub_strings << sub
#         end

#      end
#      sub_strings
# end
def palindrome_substrings(str)
    substrings(str).select {|sub| sub if sub.length > 1 && palindrome?(sub)}
end