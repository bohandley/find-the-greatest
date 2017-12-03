# input array of integers
# output a single integer that is the greatest value in the array

# loop through the array
# compare each value to the previous value
  # store whichever value is greater and compare that to the next value
# return the stored value

def greatest_integer(array)
  return "Array must contain an integer" if array.empty?
  return "Array must contain only integers" if !array.all? { |i| i.class == Integer}
  stored = array[0]
  array.each do |integer|
    stored = integer if integer > stored        
  end
  stored
end

arr1 = [-1,-2,-3,-4,-5,-5,-6,]
arr2 = [1,2,3,4,5]
arr3 = []
arr4 = ["a", 1,2]
puts greatest_integer(arr1)
puts greatest_integer(arr2)
puts greatest_integer(arr3)
puts greatest_integer(arr4)