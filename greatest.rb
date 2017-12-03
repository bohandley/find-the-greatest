def greatest_integer(array)
  error1 = 'Argument must be an array'
  error2 = 'Array must contain an integer'
  error3 = 'Array must contain only integers'
  raise(ArgumentError, error1) unless array.is_a? Array
  raise(ArgumentError, error2) if array.empty?
  raise(ArgumentError, error3) unless only_int?(array)
  stored = array[0]
  compare_values(stored, array)
end

def compare_values(stored, array)
  array.each do |integer|
    stored = integer if integer > stored
  end
  stored
end

def only_int?(array)
  array.all? { |i| i.is_a? Integer }
end
