def luck_check (input)
  numbers = input.split('')
  halfway_point = (numbers.length / 2)
  #splits the input into an array

  left = sum_calc(numbers[0,halfway_point])
  right = sum_calc(numbers[halfway_point..-1])
  #passes left and right halves of array to 'sum_calc' function below

  luck_checker(numbers, left, right)
  #passes left and right to 'luck_checker' function below
end

def luck_checker (numbers, left, right)
  if numbers.length.even?
    left == right ? true : false 
  else
    "input string is invalid, odd number of characters"
  end
  #checks to see if numbers has even elements, and returns true, false, or invalid
end

def sum_calc (input)
  sum = 0
  input.each do |x| sum += x.to_i end
  sum
  #loops through the input array and sums the elements
end
