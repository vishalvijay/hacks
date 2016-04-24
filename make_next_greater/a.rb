ts = gets.chomp.to_i
(0...ts).each do |t|
	nx = gets.chomp.split " "
	x = nx[1].to_i
	a = gets.chomp.split(" ").map &:to_i
	count  = 0
	if a.length > 0
		(1...a.length).each do |i|
			if a[i] <= a[i-1]
				c_count = ((a[i-1] - a[i])/x)+1
				a[i] += x * c_count
				count += c_count
			end
		end
	end
	puts count
end
