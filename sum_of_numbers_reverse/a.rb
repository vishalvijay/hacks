ts = gets.chomp.to_i
(0...ts).each do |t|
	n = gets.chomp.to_i
	r = Math.sqrt(n*2)
	if r - r.floor > 0.5
		puts r.ceil
	else
		puts r.floor
	end
end
