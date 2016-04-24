def isArray_Balanced(arr) 
	sum = arr.inject(0){|sum,x| sum + x}
	left = 0
	(0...arr.length).each do |i|
		if left === (sum - arr[i] - left)
			return 1
		end
		left += arr[i]
	end
	0
end

puts isArray_Balanced [5, 6, 7, 2, 6, 8, 42]