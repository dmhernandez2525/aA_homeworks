require "rspec"
require "tdd.rb"

describe "tdd" do
    describe "#my_uniq" do
        let(:a) { [1,2,3,4,1,2] }
        let(:b) { my_uniq(a) }

        it "returns uniq array" do
        expect(a.count).to_not eq(b.count) 
        end

        it "returns array with uniq ele" do 
            expect {my_uniq(a)}.to_not change {a}
            # my_uniq(a)
        end
        # it "receves an array" do 
        #     expect {my_uniq(a)}.to receive {Array}
        #     # my_uniq(a)
        # end
    end
    
    describe "#to_sum" do
    [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
    let(:a) { [-1, 0, 2, -2, 1] }

    it "returns a 2D array" do

    end
end

end