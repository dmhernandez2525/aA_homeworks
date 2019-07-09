require "card"
require "rspec"

describe "card" do
    subject(:card) { Card.new() }
    let(:value) { 10 }
    let(:suit) { :spade }
    describe "#initialize" do
        it "should accept a parameter for suit" do
            expect(Card.new(value, suit).value).to eq(value)
        end

        it "should accept a parameter for value" do
            expect(Card.new(value, suit).suit).to eq(suit)
        end
    end

    describe "#==" do
        subject(:card) { Card.new(value,suit) }
        let(:value) { 10 }
        let(:suit) { :spade }
        it "return false if two card have an equle value" do 
            # expect(card).to receive(:==).with(Card.new(10,:heart)).to eq(true)
            # expect(card == Card.new(10,:heart)).to eq(tru)
            # expect(card.value == (Card.new(10,:heart).value)).to eq(true)
            expect(Card.new(10,:heart) == Card.new(15,:spade)).to eq(false)
        end

        it "return true if two card have an equle value" do 
            expect(Card.new(10,:heart) == Card.new(10,:heart)).to eq(true)
        end

    end
end