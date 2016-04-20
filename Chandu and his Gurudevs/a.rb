def get_sum n, graph, graph_calc
	sum = 0
	i = 0
	while i < n
		j = i+1
		while j < n
			sum += get_max i, j, n, graph, graph_calc
			j += 1
		end
		i += 1
	end
	sum
end

def get_max i, j, n, graph, graph_calc, max = 0
	return graph_calc[i][j] if graph_calc[i][j]
	graph[i].each_with_index do |node|
		if node[:to] == j
			max = node[:c]
		else
			max = get_max i, node[:to], n, graph, graph_calc, node[:c]
		end
		graph_calc[i][node[:to]] = max
		graph_calc[node[:to]][i] = max
	end
	graph_calc[i][j]
end

ts = gets.chomp.to_i
(1..ts).each do |t|
	n = gets.chomp.to_i
	graph_calc = []
	graph = []
	(0...n).each do |i|
		d = gets.chomp.split(" ")
		s = d[0].to_i - 1
		e = d[1].to_i - 1
		c = d[3].to_i
		graph[s] = {} unless graph[s]
		graph[e] = {} unless graph[e]
		graph[s][e] = c
		graph[e][s] = c
		graph_calc[i] = []
	end
	puts get_sum n, graph, graph_calc
end