require 'pry'

class Tree
	attr_reader :root

	def initialize(root)
  	@root = root
  end

  # [ 1 2 4 5 3]
  def pre_order(current=@root, arr=[])
  	return if current.nil?
  	arr.push(current.data)
  	pre_order(current.left, arr)
  	pre_order(current.right, arr)
  	arr
  end

  def in_order(current=@root, arr=[])
  	return if current.nil?
  	in_order(current.left, arr)
  	arr.push(current.data)
  	in_order(current.right, arr)
  	arr
  end

  def post_order(current=@root, arr=[])
  	return if current.nil?
  	post_order(current.left, arr)
  	post_order(current.right, arr)
  	arr.push(current.data)
  	arr
  end
end

class Node
	attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
  	@data = data
  	@left, @right = nil, nil
  end
end

root = Node.new(1)
root.left = Node.new(2)
root.left.left = Node.new(4)
root.left.right = Node.new(5)
root.right = Node.new(3)

tree = Tree.new(root)
pre_order = tree.pre_order
in_order = tree.in_order
post_order = tree.post_order

#
# @root=
#   @data=1,
#   @left=
#     @data=2,
#     @left=
#       @data=4,
#         @left=nil, @right=nil,
#     @right=
#       @data=5
#         @left=nil, @right=nil,
#   @right=
#     @data=3,
#       @left=nil, @right=nil
#
