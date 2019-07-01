class Stack
    def initialize
      # create ivar to store stack here!
    end

    def push(el)
      self + [el]
    end

    def pop
      self[0...-1]
    end

    def peek
      self[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end

class Queue
    def enqueue(el)
        self + [el]
    end

    def dequeue
        self[1..-1]
    end

    def peek
        self[0]
    end


end

class My_map
    attr_reader :array
    def initialize
        @array = []
    end

    def show
        @array
    end

    def set(key, value)
        if  @array.any? {|sub| sub[0] == key}
            @array.each {|sub| sub[1] = value if sub[0] == key}
        else
            @array.push([key, value])    
        end

    end

    def get(key)
        if  @array.any? {|sub| sub[0] == key}
            @array.each {|sub| return sub if sub[0] == key}
        else
            raise "no key with that name"    
        end
    end

    def delete(key)
        if  @array.any? {|sub| sub[0] == key}
            @array.each_with_index {|sub,i| @array[0...i] + @array[i + 1..-1] if sub[0] == key}
        else
            raise "no key with that name"    
        end
    end
    





end

may_map = My_map.new
may_map.set("key","value")
p may_map.array
may_map.set("key","alue")
p may_map.array
p 11111111111111
p may_map.get("key")