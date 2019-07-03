require 'set'
class GraphNode
    attr_reader :value , :neighbor 
    def initialize(value)
        @value = value
        @neighbor = []
    end

    def neighbors=(node)
        @neighbor += node
    end
    require "byebug"
   
    def neighbors_value
        #debugger
        vals = []
        self.neighbor.each {|node| vals << node.value}
        vals
    end


end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

#p a.neighbors_value
def bfs(starting_node, target_value)
    seen = Set[]
    q = [starting_node]
    until q.empty?
        #debugger
        unless seen.include?(q.first.value)
            return q.first.value if q.first.value == target_value
            remove_self = q.shift
            q += remove_self.neighbor  
            seen.add(remove_self.value)
        end
        q.shift

    end
    return nil
end

#p bfs(d,'christina is cool')
p bfs(a, "f")