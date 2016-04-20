n = gets.chomp.to_i
arr = gets.chomp.split(" ").map &:to_i
xy = gets.chomp.split(" ")
x = xy[0].to_i
y = xy[1].to_i

is_breaked = false
i = x
i_visited = []
while arr[i] && arr[i] != -1 && !i_visited[i]
	i_visited[i] = true
	j = y
	j_visited = []
	while arr[j] && arr[j] != -1 && !j_visited[j] && arr[j] != x
		j_visited[j] = true
		if arr[j] == arr[i]
			puts arr[j]
			is_breaked = true
			break
		end
		j =  arr[j]
	end
	break if is_breaked
	i = arr[i]
end