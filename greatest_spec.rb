require_relative 'greatest'

describe 'Greatest integer' do 
  arr1 = [1,2,3,4,5]
  arr2 = [-1,-2,-3,-4,-5,-5,-6,]
  arr3 = [50,-12,3]
  arr4 = []
  arr5 = ["a", 1,2]
  arr6 = 1

  describe 'takes an array of positive numbers' do
    it 'returns the greatest integer' do
      expect(greatest_integer(arr1)).to eq 5
    end
  end

  describe 'takes an array of negative numbers' do
    it 'returns the greatest integer' do
      expect(greatest_integer(arr2)).to eq -1  
    end
  end

  describe 'takes an array of positive and negative numbers' do
    it 'returns the greatest integer' do
      expect(greatest_integer(arr3)).to eq 50 
    end
  end

  describe 'error handling' do
    it 'throws an error if the array is empty' do
      expect { greatest_integer(arr4) }.to raise_error ArgumentError  
    end

    it 'throws an error if the array contains anything but integers' do
      expect { greatest_integer(arr5) }.to raise_error ArgumentError  
    end

    it 'throws an error if the argument is not an array' do
      expect { greatest_integer(arr6) }.to raise_error ArgumentError  
    end  
  end
end