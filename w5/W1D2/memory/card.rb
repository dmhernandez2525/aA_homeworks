class Card
    attr_accessor :face_up
    attr_reader :letter

    def initialize(letter)
        #@cards = ["a","b","c","d","e","f","g","h"]
        @face_up = false
        @letter = letter 
    end

    # def select_card
    #     @cards.sample
    # end

    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end

    # to_s?
    #==?


end


















#A Card has two useful bits of information: its face value, and whether it is face-up or face-down. 
#You'll want instance variables to keep track of this information. 
#You'll also want a method to display information about the card: nothing when face-down, 
#or its value when face-up. I also wrote #hide, #reveal, #to_s, and #== methods.
#Common problem: Having issues with 