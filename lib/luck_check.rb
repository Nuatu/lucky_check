def luck_check (input)
	numbers = input.split('')
	halfway_point = numbers.length / 2
	#splits the input into an array

	left = sum_calc(numbers[0,halfway_point])
	right = sum_calc(numbers[halfway_point..-1])
	#passes left/right halves of array to 'sum_calc' function below

	luck_checker(left, right)
	#passes left and right to 'luck_checker' function below
end

def sum_calc (input)
	sum = 0
	input.each do |x|
		sum += x.to_i
	end
	p sum
end
