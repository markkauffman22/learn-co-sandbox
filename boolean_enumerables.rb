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
