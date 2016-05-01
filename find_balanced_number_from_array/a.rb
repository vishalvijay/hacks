require 'set'

def get_balanced_number a
	set = Set.new
	hash = {}
	length = a.length
	a.each do |e|
		if e > -1
			hash[e] ||= 0
			hash[e] += 1
			set.add e
		else
			length -= 1
		end
	end

	current_number = -1
	current_number_predicted_count = 0
	ignored_item_count = 0

	set.each do |e|
		predicted = length - hash[e] - ignored_item_count
		if predicted >= e
			if e > current_number
				current_number = e
				current_number_predicted_count = predicted
			elsif current_number_predicted_count - hash[e] < current_number
				current_number_predicted_count = predicted + hash[current_number]
				ignored_item_count -= hash[current_number]
				current_number = e
			else
				current_number_predicted_count -= hash[e]
			end
			ignored_item_count += hash[e]
		end
		break if current_number == current_number_predicted_count
	end

	current_number_predicted_count == current_number ? current_number : nil
end
[
	[2, 2, 2, 1, 2, 4, 3, 5, 4],
	[0, 2],
	[0],
	[3, 2, 2, 1, 4],
	[2, 5, 5, 3, 4],
	[1, 2, 3],
	[9, -1, 2, 1, 1, 4],
	[900, 8, 7, 3],
	[1, 2],
	[2, 1],
	[100, 99, 3, 2, 1, 9999],
	[4, 2, 1, 1]
].each do |a|
	result = get_balanced_number a
	puts "#{a} => #{result || "Not found"}"
end
