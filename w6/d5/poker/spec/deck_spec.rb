require "rspec"
require "deck"

describe "deck" do

    

    describe "#initialize" do

    subject(:deck) {Deck.new}

        it "has a deck of 52 cards" do
        expect(deck.cards.count).to eq(52)
        end



    end
end
