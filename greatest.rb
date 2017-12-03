# input array of integers
# output a single integer that is the greatest value in the array

# loop through the array
# compare each value to the previous value
  # store whichever value is greater and compare that to the next value
# return the stored value

def greatest_integer(array)
  raise(ArgumentError, "Argument must be an array") if array.class != Array
  raise(ArgumentError, "Array must contain an integer") if array.empty?
  raise(ArgumentError, "Array must contain only integers") if has_only_int?(array)
  stored = array[0]
  compare_values(stored, array)
  stored
end

def compare_values(stored, array)
  array.each do |integer|
    stored = integer if integer > stored        
  end
end

def has_only_int?(array)
  !array.all? { |i| i.class == Integer}
end  

arr1 = [-1,-2,-3,-4,-5,-5,-6,]
arr2 = [1,2,3,4,5]
arr3 = []
arr4 = ["a", 1,2]
arr5 = 1
puts greatest_integer(arr1)
puts greatest_integer(arr2)
# puts greatest_integer(arr3)
# puts greatest_integer(arr4)
# puts greatest_integer(arr5)

