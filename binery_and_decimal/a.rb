def count_bits n
	count = 0
    while n > 0
      n &= n-1
      count += 1
    end
    count
end

def swap_array(a)
	a.map! do |n|
		{
			cb: count_bits(n),
			n: n
		}
	end
	a.sort do |ao, bo|
		if ao[:cb] == bo[:cb]
			ao[:n] <=> bo[:n]
		else
			ao[:cb] <=> bo[:cb]
		end
	end.reverse.each do |obj|
		puts obj[:n]
	end
end

swap_array [31, 14, 15, 7, 2]

