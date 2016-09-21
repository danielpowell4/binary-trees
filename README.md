# binary-trees
Builds a binary tree of nodes out of an array and recreates sorting in Ruby.

For more info on binary trees run a quick [google](http://google.com) search or read up [here](https://en.wikipedia.org/wiki/Binary_tree).

Essentially binary trees are a related branching of nodes that each hold values, and left
and right next nodes (sometimes nil). BTs are a simple data structure key to understanding
how commonplace classes like arrays actually function.

**This particular repo is interesting as it includes the following:**
- a method that constructs a sorted tree out of an array
- a method that prints the tree into a more legible format on the command line
- a method that **flattens a tree** into an array
- a method that **sorts an array** by building it into a sorted BT

##Run locally
1. Clone down onto your machine
2. CD on in
3. Add a few lines at the bottom of `lib/btree.rb` (ideas below)
4. Run `ruby lib/btree.rb` from command line

###Suggestions to play with:
```
# Building a basic tree
basic_tree = build_tree([1,2,3])

# Using to_s makes the tree read nicely
puts basic_tree.to_s

# Build a more complicated tree
fun_tree = build_tree([4, 55, 2, 1, 3453, 22]) # any array of integers will do
puts fun_tree.to_s

# These sorted trees and then be flattened back into arrays
print flatten_tree(basic_tree)
print flatten_tree(fun_tree)

# The gold, though, is sorting an array into increasing order
# without the in between functions
# This can be done by passing an array into sort
print sort(4, 55, 2, 1, 3453, 22])
```

##See tests pass
After 1) cloning to your machine, 2)`cd`ing on in, and 3) running a `bundle install`, run a simple `bundle exec rspec`

##Files worth the view
Not too many here...

**Main**: [lib/btree.rb](https://github.com/danielpowell4/binary-trees/blob/master/lib/btree.rb)

**Tests**: [spec/btree_spec.rb](https://github.com/danielpowell4/binary-trees/blob/master/spec/btree_spec.rb)
