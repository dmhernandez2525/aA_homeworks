# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return (self.sort[-1] - self.sort[0]) if self.length > 0 
        nil
    end

    def average 
        return (self.sum / self.length.to_f)  if self.length > 0 
        nil
    end

    def median
        if self.length.even? && self.length > 0
            i = (self.length / 2 ) - 1
            return self.sort[i..i + 1].sum / 2.0 
        elsif self.length.odd?
            return self.sort[self.length / 2]
        else
            return nil
        end
    end

    def counts 
        hash = Hash.new(0)
        self.each{|ele| hash[ele] += 1}
        hash
    end

    def my_count(ele)
        count = 0
        self.each{|el| count += 1 if el ===ele }
        count
    end

    def my_index(ele)
        (0..self.length - 1).each{|index|return index if self[index] == ele}
        nil
    end

    def my_uniq
        new_array = []
        hash = Hash.new(0)
        self.each do |ele|
            if !hash.key?(ele)
                new_array << ele 
                hash[ele] +=1
            end
        end
        new_array
    end

    def my_transpose
        new_array = []
        (0...self.length).each do |row|
            new_row =[]
            (0...self.length).each do |col|
                new_row << self[col][row]


            end
            new_array << new_row
        end
        new_array
    end
end
