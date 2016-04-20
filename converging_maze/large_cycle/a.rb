def get_cycle_length arr, i, e, visited, length = 0
	return length if e == i && visited[i]
	return -1 if i == -1 || e == -1
	visited[i] = true
	get_cycle_length arr, arr[i], e, visited, length+1
end

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map &:to_i
max = -1
visited = []
arr.each_with_index do |e, i|
	len = get_cycle_length arr, i, e, visited
	max = len-1 if len > max
end

puts max