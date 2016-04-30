a = [1, 7, -1, -2, 1, 5, 3]
if a.length > 0
	max = 0
	(1...a.length).each do |i|
		if a[i] > a[max]
			max = i
		end
	end
	puts "Maximum average sub array: [#{a[max]}] index : #{max} => #{max}"
else
	puts "Not found"
end