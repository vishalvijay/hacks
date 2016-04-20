def gridColouring(grid)
	count = 0
	n = 0
	while n < grid.length
		m = 0
		while m < grid[n].length
			if (grid[n][m] == "R" || grid[n][m] == "G") && (grid[n][m+1] == "." || grid[n][m+1].nil?)
				count += 1
			end
			m += 1
		end
		n += 1
	end
	if grid.length > 0
		m = 0
		while m < grid[0].length
			n = 0
			while n < grid.length
				if (grid[n][m] == "B" || grid[n][m] == "G") && (grid[n+1].nil? || (grid[n+1] && grid[n+1][m] == "."))
					count += 1
				end
				n += 1
			end
			m += 1
		end
	end
	count
end

puts gridColouring [".BG.", "G.RR", "G.G.", "...."]