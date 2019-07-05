require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject (:brownie) {Dessert.new("Brownie",2, chef)}

  describe "#initialize" do
    it "sets a type" do 
      expect(brownie.type).to eq("Brownie")
    end

    it "sets a quantity" do 
     expect(brownie.quantity).to eq(2) 
    end


    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end


    it "raises an argument error when given a non-integer quantity" do
    expect{Dessert.new("a","a",chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    subject(:cake) {Dessert.new("cake",20,chef)}
    it "adds an ingredient to the ingredients array" do 
      expect(cake).to receive(:add_ingredient).with("chocolit")
      cake.add_ingredient("chocolit")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      expect(brownie).to receive(:shuffles)
      brownie.shuffles
    end

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" 
    # do 
      
    # end


    it "raises an error if the amount is greater than the quantity" 
    # do 

    # end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" 
    # do

    # end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(chef).to receive(:make_more).with(brownie)
      chef.make_more(brownie)
    end
  end
end
