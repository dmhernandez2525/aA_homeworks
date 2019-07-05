require "card.rb"

class Deck
    attr_reader :cards
    def initialize
        @cards = []
        Card::SUIT_STRINGS.each do |s|
          Card::VALUE_STRINGS.each do |v|
            @cards << Card.new(v,s) 
          end
        end

    end


end