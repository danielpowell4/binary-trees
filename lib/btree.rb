# This is a binary tree
# It is composed of tree left and right tree nodes which all own a payload/value
class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left = nil, right = nil)
    @payload = payload
    @left = left
    @right = right
  end

  # Assigns a new value to its proper place in a tree based upon
  # its value in relation to the already established tree structure
  def insert(next_val)
    if @payload.nil?
      @payload = next_val
    elsif next_val < @payload
      @left ? @left.insert(next_val) : @left = BinaryTree.new(next_val)
    elsif next_val > @payload
      @right ? @right.insert(next_val) : @right = BinaryTree.new(next_val)
    else
      puts 'can\'t insert a non-unique value'
    end
  end

  # Prints a nested tree inside of <>'s
  # This is helpful for elementary tree visualiztion
  # especailly when working with build_tree
  def to_s
    str = ''
    str += "< Tree: @payload=#{@payload}\n"
    str += @payload.nil? ? "\t@payload: Nil\n" : "\t@payload: #{@payload}\n"
    str += @left.nil? ? "\t@left: Nil\n" : "\t@left: #{@left}\n"
    str += @right.nil? ? "\t@right: Nil>" : "\t@right: #{@right}>"
    str
  end
end

# Takes an array and returns an tree of nodes where the left
# children are smaller and right children are greater
# Use BinaryTree class's .to_s to view
def build_sorted_tree(array)
  tree = BinaryTree.new(nil, nil, nil)
  array.each do |item|
    tree.insert(item)
  end
  tree
end

# Takes a tree and flattens it into an
# See go_looking below for methodology
def flatten_tree(tree)
  array = []
  go_looking(tree, array)
  array
end

# Uses a depth-first-search like recursion alorithim assigning the
# left-most (and if sorted smaller) node to the array first. When farther
# left smaller nodes are no longer present, it adds its own value
# to the array before searching and adding for righter (if sorted, larger)
# nodes.
def go_looking(tree, array)
  go_looking(tree.left, array) unless tree.left.nil?
  array << tree.payload
  go_looking(tree.right, array) unless tree.right.nil?
end

# Sorts an array by building it into a sorted tree and then
# flattening it into an array using build_sorted_tree and
# flatten_tree in sequence
def sort(array)
  tree = build_sorted_tree(array)
  flatten_tree(tree)
end
