def palindrome?(word)
    (0...word.length).each {|i| return false if word[i] != word[-i - 1]}
    true
end

def substrings(word)
    sub_strings = []
    (0...word.length).each do |start_index|
        (start_index...word.length).each do |end_index|
        sub_strings << word[start_index..end_index]
        end
    end
    sub_strings
end

def palindrome_substrings(str)
    substrings(str).select{|sub| palindrome?(sub) && sub.length > 1}
end