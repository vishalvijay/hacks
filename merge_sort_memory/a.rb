def merge_sort arr, i, j
	return [arr[i]] if i == j
	mid = (i+j)/2
	left = merge_sort arr, i, mid
	right = merge_sort arr, mid+1, j
	new_arr = []
	i = 0
	j = 0
	while i < left.length && j < right.length
		if left[i] < right[j]
			new_arr << left[i]
			i += 1
		else
			new_arr << right[j]
			j += 1
		end
	end
	while i < left.length
		new_arr << left[i]
		i += 1
	end

	while j < right.length
		new_arr << right[j]
		j += 1
	end
	new_arr
end

arr_to_sort = [6, 5, 4, 3, 2, 1]

arr = merge_sort arr_to_sort, 0, arr_to_sort.length-1

puts arr.to_s