def load_balance_left load, i, final_load
	if i <= 0
		return nil
	end
	if load[i-1] > final_load[i-1]
		return i-1
	else
		return load_balance_left load, i-1, final_load
	end
end

def load_balance_right load, i, final_load
	if i >= load.length - 1
		return nil
	end
	if load[i+1] > final_load[i+1]
		return i+1
	else
		return load_balance_right load, i+1, final_load
	end
end

def load_balance load, start, final_load
	i = -1
	(start...load.length).each do |index|
		if load[index] < final_load[index]
			i = index
			break
		end
	end
	if i > load.length - 1 || i < 0
		return
	end
	l = load_balance_left load, i, final_load
	r = load_balance_right load, i, final_load
	if l
		load[l] -= 1
		load[i] += 1
	end
	if r
		load[r] -= 1
		load[i] += 1
		load_balance load, r+1, final_load
	end
end

def start load
	sum = load.inject(0){|sum, x| sum + x}
	min_number = sum / load.length
	min_carry = sum % load.length
	max_number = min_number+(min_carry > 0 ? 1 : 0)
	sorted_index = load.each_with_index.sort.map(&:last).reverse
	final_load = load.clone
	load_count = 0
	sorted_index.each do |i|
		final_load[i] = (load_count < min_carry ? max_number : min_number)
		load_count += 1
	end
	count = 0
	while (load - [min_number, max_number]).length != 0
		count += 1
		load_balance load, 0, final_load
	end
	count
end

print "Enter number of servers: "
n = gets.chomp.to_i
print "Enter server loads: "
load = gets.chomp.split(",").map(&:to_i)
seconds = start load
puts "\nOutput: 7 seconds"