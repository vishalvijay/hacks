require 'set'
input = ["bfgh", "cbf", "gh", "edg", "ag", "edc", "ae", "dbg"]
# input = ["ba", "cea", "de", "efa", "bcd"]
alps = {}
input.each do |str|
	str.split("").each_with_index do |char, i|
		alps[char] = {char: char[0], left: Set.new, right: Set.new} unless alps[char]
		alps[char][:left].merge str[0..i-1].split("") if i > 0
		alps[char][:right].merge str[i+1..-1].split("") if i < str.length-1
	end
end
final_alps = alps.values.sort do |a, b|
	a[:left].length <=> b[:left].length
end
result = []
final_alps.each do |alp|
	result << alp[:char]
end
i = result.length-1
while(i >= 0) do
	alp = alps[result[i]]
	swapped = false
	alp[:right].each do |char|
		j = result.index(char)
		if i > j
			result[j] = result[i]
			result[i] = char
			swapped = true
			break
		end
	end
	i -= 1 unless swapped
end

puts result.join