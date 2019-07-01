def palindrome?(str)
    i=0
    (str.length - 1).downto(0).each do |b| 
        return false if str[i] != str[b]
        i +=1
    end
    true
end
def substrings(str)
    sub_strings = []
    str.each_char.with_index do |char,index|
        sub = ""
        str[index..-1].each_char do |letter|
            sub += letter
            sub_strings << sub
        end

     end
     sub_strings
end

def palindrome_substrings(str)
    substrings(str).select{|sub|sub.length > 1 && palindrome?(sub)}
end
