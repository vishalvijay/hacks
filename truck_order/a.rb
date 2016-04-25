def can_order_trucks_in_order(incoming_truck_order)
	last_number_in_q = incoming_truck_order.length + 1
	last_number_passed = 0
	incoming_truck_order.each do |e|
		if e != last_number_passed+1
			if last_number_in_q < e
				return false
			else
				last_number_in_q = e
			end
		else
			last_number_passed = e
		end
	end
	true
end

puts can_order_trucks_in_order [5, 4, 5, 1, 2, 3]