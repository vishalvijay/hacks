def max_exchnage n, h
	n = n.floor
	return h[n] if h[n]
	return n if n < 12
	new_max = max_exchnage(n/2, h) + max_exchnage(n/3, h) + max_exchnage(n/4, h)
	r = new_max < n ? n : new_max
	h[n] = r
	r
end

puts max_exchnage 360000001312344342424, {}