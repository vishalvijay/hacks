require 'set'
def anagram_test parent, sub
	count = 0
	if sub.length <= parent.length
		hash = {}
		(0...sub.length).each do |i|
			hash[sub[i]] = 1
		end
		map = {}
		(0..parent.length).each do |i|
			if hash[parent[i]]
				map[parent[i]] = 1
			else
				map = {}
			end
			if map.length == sub.length
				count += 1
				map.delete sub[i-sub.length+1]
			end
		end
	end
	count
end

puts anagram_test "abcaba", "abc"