require 'byebug'

class PolyTreeNode

    attr_reader :parent, :value
    attr_accessor :children

    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    def parent=(parent_node)
        if parent_node.nil? 
            @parent = parent_node
        elsif @parent == nil
            @parent = parent_node
            parent_node.children << self
        else
            # remove self from former parent
            @parent.children.reject! {|child| child.value == self.value}
            #add self to new parent
            parent_node.children << self
            @parent = parent_node
        end
    end

    def add_child(child_node)
        # @children << child_node
        child_node.parent=(self)
    end

    def remove_child(child_node)
        # self.children.delete_at(self.children.index(child_node))
        raise if !@children.include?(child_node)
        child_node.parent=(nil)
    end

    def dfs(target) # target = target_value
        return self if target == self.value
        return nil if children.empty? && self.value != target
        
        @children.each do |child|
            check = child.dfs(target)
            if check == nil
                next
            else
                return check
            end
        end
        nil
    end


    # def dfs(target)
    #     return self if target == self.value

    #     @children.each do |child|
    #         if child.value == target
    #             return child
    #         elsif child.dfs(target).nil?
    #             return nil
    #         else
    #             child.children.dfs(target)
    #         end
    #     end

    #     nil
    # end
    def here
        puts "in the tree class"
        s = []
        children.each {|c| s << c.value}
        s
    end

    def bfs(target)
        q = [self]
        until q.empty?
            shifted = q.shift
            return shifted if shifted.value == target
            q += shifted.children
            # debugger
        end
        nil
    end

    def find_path(target_pos)# => [2,5]
        #debugger
      return self.value if target_pos == self.value
      return nil if self.children.empty?
      
      self.children.each do |child|
        find = child.find_path(target_pos)
        if  find == nil
          next
        else
          return [self.value] + [find]
        end
      end
      nil
    end

    # def inspect
    #     {'value' => @value, 'children' => @children, 'parent' => @parent}.inspect
    # end
    
end


# n1 = PolyTreeNode.new("Node1")
# n2 = PolyTreeNode.new("Node2")
# n3 = PolyTreeNode.new("Node3")

# n2.parent=(n1)
# puts n1.children
# n2.parent=(n3)
# puts n1.children
# puts n2.parent

