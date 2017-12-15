require 'pry'
# Binary Tree Implementation

# Given a BST tree, we have to break the tree depending on the input(N), into two subtrees, 
# where subtree1 consists of all the nodes, which are less than or equal to N and subtree2 
# consists of all the nodes which are greater than N. 

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

    def traverse_left
      ltree = Node.new(self.value).left = self.left
      ltree
    end

  end # end class
end # end module

btree  = BinaryTree::Node.new(50)
[40, 60, 30, 45, 55, 58].each { |node| btree.insert(node) }

puts left_btree = btree.traverse_left.inspect
puts right_btree = btree.right.inspect
puts btree.inspect


#        50
#   40        60
# 30  45   55
#        58
