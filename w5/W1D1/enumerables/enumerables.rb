class Array
    def my_each(&prc)
        i = 0
        
        while i < self.length
            prc.call(self[i]) 

            i += 1
        end
        self
    end

    def my_select(&prc)
        new_array = []
        self.my_each{|ele| new_array << ele if prc.call(ele)}
        new_array
    end

    def my_reject(&prc)
        new_array = []
        self.my_each{|ele| new_array << ele if !prc.call(ele)}
        new_array
    end

    def my_any?(&prc)
        self.my_each{|ele| return true if prc.call(ele)}
        false
    end
    
    def my_all?(&prc)
        self.my_each{|ele| return false if !prc.call(ele)}
        true
    end

    def my_flatten
        return [self] if !self.is_a?(Array)
        new_arr = []
        self.each do |array|
            if !array.is_a?(Array)
                new_arr << array
            else
                new_arr += array.my_flatten
            end
        end
        new_arr
    end

    def my_zip(*args)
        nested = Array.new(self.length)  {Array.new(args.length + 1)}
        
        i = 0
        j = 0
        
        nested.each do |sub|

            sub[j] = self[i]
            args.each do |arg|
                j += 1 
                sub[j] = arg[i]
            end
            j = 0    
            i += 1
        end
        nested
    end
        
    def my_rotate(val = 1)
        
        if val > 0
            val.times do 
                arg = self.shift
                # p self
                # p arg
                self.push(arg)
            end
        elsif val < 0
            (-val).times do
                arg = self.pop
                # puts arg
                # puts self
                self.unshift(arg)
            end
        else
            return self
        end
        self
    end

    def my_join(separator = "")
        str = ""
        self.each_with_index do |ele,i|
            if i != (self.length - 1)
                str += ele
                str += separator
            else
                str += ele
            end
        end
        str
    end

    def my_reverse
        new_arr = []
        (self.length - 1).downto(0).each {|index| new_arr << self[index] }
        new_arr
    end
end

p [ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
p [ 1 ].my_reverse               #=> [1]