-----------------------------------------
#  .all?, .none?, .any?, .include?
-----------------------------------------
# .all method ...
all_odd = [1,3].all? do |number|
  number.odd? # Will evaluate to true for 1, true for 3
end #=> true
all_odd #=> true
----------------------
# .none method ...
[1,3].none?{|i| i.even?} #=> true
----------------------
# .any method ...
[1,2,100].any?{|i| i > 99} #=> true
----------------------
# .include method ...
the_numbers = [4,8,15,16,23,42]
the_numbers.include?(42)   #=> true
the_numbers.include?(6)   #=> false
----------------------

-----------------------------------------------
Search Enumerables
-----------------------------------------------
#select   #detect   #reject

----------THIS IS EXPENSIVE---------------

["Red", "Yellow", "Blue"].each do |color|
  puts "There are #{color.length} letters in #{color}"
end #=> ["Red", "Yellow", "Blue"]
------------
matches = []
[1,2,3,4,5].each do |i|
  matches << i if i.even? # add i to the matches array if it is even
end #=> [1,2,3,4,5]
matches #=> [2,4]
-------------
---------DO THIS---------------
# .select example ...
[1,2,3,4,5].select do |number|
  number.even?
end #=> [2,4]

[1,2,3,4,5].select{|i| i.even?} #=> [2, 4]

[1,2,3,4,5].select{|i| i.odd?} #=> [1,3,5]
 
[1,2,3].select{|i| i.is_a?(String)} #=> []
SWEET!: 
-------------
# Whereas #select will return all elements from the original collection that cause the block
# to evaluate to true, #detect OR #find (THEY ARE THE SAME METHOD!!) will 
# ONLY RETURN THE FIRST element that makes the block true.

# Note also #detect will always return a SINGLE OBJECT where #select will always return an ARRAY.

# .detect / .find example ...
[1,2,3].detect{|i| i.odd?} #=> 1
[1,2,3].find{|i| i.odd?} #=> 1
-------------
#reject will return an array with the elements for which the block is false.
# .reject example ...
[1,2].reject{|i| i.even?} #=> [1]
[1,2,3,4,5,6,7,8,9].reject{|i| i.even?} #=>  [1, 3, 5, 7, 9]
[1,2,3,4,5,6,7,8,9].reject{|i| i.odd?} #=> [2,4,6,8]

-------------
Conclusion
#select, #detect, and #reject are part of a family of search and filter type enumerators 
#whose purpose is to help you refine a collection to only matching elements. They are way 
#easier to manage than using lower-level methods like #each and create meaningful return 
#values based on expressions in a block.


