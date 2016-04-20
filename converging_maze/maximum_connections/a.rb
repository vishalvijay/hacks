n = gets.chomp
array = gets.chomp.split(" ").map &:to_i
count_array = []

array.each do |a|
	unless count_array[a]
		count_array[a] = 1
	else
		count_array[a] += 1
	end
end

puts count_array.compact.max