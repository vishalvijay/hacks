class InputManager
	def initialize
		file = File.open("A-large.in", "rb")
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
		n = r.input.to_i
		if n == 0
			f.puts "Case ##{t}: INSOMNIA"
		else
			count = 0
			visited = []
			i = 1
			while count < 10
				tn = n * i
				while tn > 0
					mod = tn % 10
					unless visited[mod]
						visited[mod] = true
						count += 1
						if count == 10
							break
						end
					end
					tn /= 10
				end
				i += 1 if count < 10
			end
			f.puts "Case ##{t}: #{n*i}"
		end
	end
end