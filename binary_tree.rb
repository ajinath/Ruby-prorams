# Binary Tree Implementation

module BinaryTree
  class Node
    attr_reader :value
    attr_accessor :left, :right

    def initialize(v)
      @value = v
    end

   def insert(v)
      case value <=> v
      when 1 then left ? left.insert(v) : self.left = Node.new(v)
      when -1 then right ? right.insert(v) : self.right = Node.new(v)
      when 0 then false # the value is already present
      end
    end

    def inspect
      "{#{value}::#{left.inspect}|#{right.inspect}}"
    end

  end # end class
end # end module

btree  = BinaryTree::Node.new(10)
btree.insert(30)
btree.insert(5)
puts tree.inspect
