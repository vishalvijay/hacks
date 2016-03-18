t = gets.chomp.to_i
(1..t).each do |i|
	mn = gets.chomp.split(" ")
	m = mn[0].to_i
	n = mn[1].to_i
	str = gets.chomp
	m_sub_count = 0
	n_sub_count = 0
	r = []
	k = []
	(0...str.length).each do |index|
		i = str.length-1-index
		str[i] == "K" ? k.unshift(i) : r.unshift(i)
		if r.length >= m
			if m == 0
				m_sub_count += r[m] ? r[m] - i : str.length - i
			elsif m < r.length
				m_sub_count += r[m] - r[m-1]
			else
				m_sub_count += str.length - r[m-1]
			end
		end
		if k.length >= n
			if n == 0
				n_sub_count += k[n] ? k[n] - i : str.length - i
			elsif n < k.length
				n_sub_count += k[n] - k[n-1]
			else
				n_sub_count += str.length - k[n-1]
			end
		end
	end
	puts "#{m_sub_count} #{n_sub_count}"
end