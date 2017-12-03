# input array of integers
# output a single integer that is the greatest value in the array

# loop through the array
# compare each value to the previous value
  # store whichever value is greater and compare that to the next value
# return the stored value

def greatest_integer(array)
  raise(ArgumentError, "Argument must be an array") unless array.is_a? Array
  raise(ArgumentError, "Array must contain an integer") if array.empty?
  raise(ArgumentError, "Array must contain only integers") unless has_only_int?(array)
  stored = array[0]
  compare_values(stored, array)
end

def compare_values(stored, array)
  array.each do |integer|
    stored = integer if integer > stored
  end
  stored
end

def has_only_int?(array)
  array.all? { |i| i.is_a? Integer}
end  


