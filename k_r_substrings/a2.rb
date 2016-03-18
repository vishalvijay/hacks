t = gets.chomp.to_i
(1..t).each do |i|
	mn = gets.chomp.split(" ")
	m = mn[0].to_i
	n = mn[1].to_i
	str = gets.chomp
	m_sub_count = 0
	n_sub_count = 0
	count_array = []
	r = []
	k = []
	(0...str.length).each do |i|
		if str[str.length-1-i] == "K"
			k = [str.length-1-i] + k
		else
			r = [str.length-1-i] + r
		end
		count_array[str.length-1-i] = {r: r, k: k}
	end
	(0...str.length).each do |i|
		if count_array[i][:r].length >= m
			if m == 0
				m_sub_count += count_array[i][:r][m] ? count_array[i][:r][m] - i : str.length - i
			elsif m < count_array[i][:r].length
				m_sub_count += count_array[i][:r][m] - count_array[i][:r][m-1]
			else
				m_sub_count += str.length - count_array[i][:r][m-1]
			end
		end
		if count_array[i][:k].length >= n
			if n == 0
				n_sub_count += count_array[i][:k][n] ? count_array[i][:k][n] - i : str.length - i
			elsif n < count_array[i][:k].length
				n_sub_count += count_array[i][:k][n] - count_array[i][:k][n-1]
			else
				n_sub_count += str.length - count_array[i][:k][n-1]
			end
		end
	end
	puts "#{m_sub_count} #{n_sub_count}"
end