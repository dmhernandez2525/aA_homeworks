def hipsterfy(word)
    word.reverse!.each_char.with_index do |char,idx|
        if "aeiou".include?(char.downcase)
            word =  word[0...idx] + word[(idx + 1)..(word.length - 1)]
            return word.reverse!
        end
    end
    word.reverse!
end

def vowel_counts(str)
    hash = Hash.new(0)
    str.downcase.split("").each { |letter| hash[letter] += 1 if "aeiou".include?(letter)}
    hash
end

def caesar_cipher(message,n)
    letters = ("abcdefghijklmnopqrstuvwxyz")
    message.split("").each_with_index do |letter,idx|
        if letters.include?(letter.downcase)
            message[idx] = letters.split("").rotate(n)[letters.index(letter)]
        end
    end
    message
    
end

# def caesar_cipher(message,n)
#     letters = ("a".."z").to_a
#     message.split("").each_with_index do |letter,idx|
#         if letters.include?(letter.downcase)
#             message[idx] = letters.rotate(n)[letters.index(letter)]
#         end
#     end
#     message
    
# end