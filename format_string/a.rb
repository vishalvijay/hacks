def format s
	map = {"{" => "}", "(" => ")", "[" => "]", "}" => "{", ")" => "(", "]" => "["}
	stack = []
	new_s = ""
	(0...s.length).each do |i|
		if ["{", "(", "["].include?(s[i])
			stack << s[i]
		elsif ["}", ")", "]"].include?(s[i])
			if stack.length > 0
				while stack.length > 0 && s[i] != map[stack[-1]]
					c = stack.pop
					if c
						new_s = c + new_s + map[c]
	 				else
	 					new_s = map[s[i]] + new_s + s[i]
					end
				end
				if stack.length > 0
					if s[i] == map[stack[-1]]
						stack.pop
						new_s =  new_s + map[s[i]] + s[i]
					end
				else
				end
			else
				new_s = new_s + map[s[i]] + s[i]
			end
		else
			new_s += s[i]
		end
	end
	new_s
end

# input = "{}()(){}(){}"
input = "(}{"
puts "#{input} => #{format input}"