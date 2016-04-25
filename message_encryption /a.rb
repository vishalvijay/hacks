def decrypt_message(encrypted_message, number_of_columns)
	r = encrypted_message.length/number_of_columns
	r += 1 if encrypted_message.length%number_of_columns > 0
	result = ""
	(0...number_of_columns).each do |i|
		(0...r).each do |j|
			index = (j % 2 == 0 ? i + (j * number_of_columns) : (j * number_of_columns + number_of_columns-1) - i)
			result += encrypted_message[index] if encrypted_message[index]
		end
	end
	result
end

puts decrypt_message "sdcadoetaaveeelrtdrasyiupsmy", 4