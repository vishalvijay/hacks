def do_magic input, output, i = 0, left_prod = 1
	return -1 if input.length == 0
	if i == input.length - 1
		output[i] = left_prod
		return input[i]
	end
	right_prod = do_magic(input, output, i + 1, (left_prod * input[i]))
	output[i] = right_prod * left_prod
	right_prod * input[i]
end

ot = []
do_magic [1, 2, 3, 4, 5], ot
puts ot.to_s