def all_words_capitalized?(arr)
     #arr.all?(&:capitalize)
     arr.all? {|word| word.capitalize == word}
end

def no_valid_url?(array)
    no = [".com", ".net", ".io",  ".org"]
    array.none? do |word|
        no.any? {|ex|word.include?(ex)}
    end
end

    # array.none? do |word|
    #     no.any? { |ex| word.end_with?(ex) }
    # end

def any_passing_students?(array)
    array.any?{|hash| ((hash[:grades].sum) / (hash[:grades].length)) >= 75}
end