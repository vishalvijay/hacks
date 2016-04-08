class InputManager
	def initialize
		file = File.open("A-large-practice.in", "rb")
		@inputs = file.read.split("\n")
		file.close
		@line_index = -1
	end

	def input
		@line_index += 1
		@inputs[@line_index]
	end
end

r = InputManager.new

ts = r.input.to_i
File.open('out.txt', 'w') do |f|
	(1..ts).each do |t|
		c = r.input.to_i
		l = r.input.to_i
		ps = r.input.split(" ").each_with_index.map do |p, i|
			{p: p.to_i, i: i}
		end.sort{|a, b| a[:p] <=> b[:p]}
		s = 0
		e = l-1
		while s < e && (cc = ps[s][:p] + ps[e][:p]) != c
			if cc > c
				e -= 1
			else
				s += 1
			end
		end
		if ps[s][:p] + ps[e][:p] == c
			index = [ps[s][:i]+1, ps[e][:i]+1].sort
			f.puts "Case ##{t}: #{index[0]} #{index[1]}"
		else
			f.puts "Case ##{t}: -1 -1"
		end
	end
end