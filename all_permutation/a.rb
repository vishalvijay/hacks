def permute a, l , r
	puts "[START] a: #{a}, l: #{l}, r: #{r}"
	if r == l
		puts a
	else
		(l..r).each do |i|
			a[l], a[i] = a[i], a[l]
			permute(a, l+1, r)
			a[l], a[i] = a[i], a[l]
		end
	end
end

str = "abc"
permute str, 0, str.length-1