t = gets.chomp.to_i
(1..t).each do |i|
	mn = gets.chomp.split(" ")
	m = mn[0].to_i
	n = mn[1].to_i
	str = gets.chomp
	m_sub_count = 0
	n_sub_count = 0
	(0...str.length).each do |i|
		r_count = k_count = m_count = n_count = 0
		j = 0
		while (r_count <= m || k_count <= n) && i+j < str.length
			r_count += 1 if r_count <= m && str[i+j] == "R"
			m_count += 1 if r_count == m

			k_count += 1 if k_count <= n && str[i+j] == "K"
			n_count += 1 if k_count == n
			j += 1
		end
		m_sub_count += m_count
		n_sub_count += n_count
	end
	puts "#{m_sub_count} #{n_sub_count}"
end