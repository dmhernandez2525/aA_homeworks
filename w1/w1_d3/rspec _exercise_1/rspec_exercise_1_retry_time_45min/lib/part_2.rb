def hipsterfy(word)
    (word.length - 1).downto(0).each {|i| return word[0...i] + word[i+1..-1] if "aeiou".include?(word[i])}
    return word
end

def  vowel_counts(string)
    vowels = "aeiou"
    hash = Hash.new(0)
    string.downcase.each_char {|letter| hash[letter] +=1 if vowels.include?(letter)}
    hash
end

def caesar_cipher(message,num)
    alphabet = ("a".."z").to_a
    message = message.chars.map do |el| 
        if alphabet.include?(el)
            alphabet[(alphabet.index(el) + num) % 26]
        else
            el
        end
    end
    message.join("")
end