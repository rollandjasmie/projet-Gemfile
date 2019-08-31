def is_string(message)#si le message a 1 ou plusieur mot
	if message.split.length > 1
		return true
	else
		return false
	end
end
def decripte_a_letter(letter,key)
	value = letter.ord
	if value < 65 || value > 122 || (value > 90 && value < 97)
		return letter
	else #upcase 65 to 90
		if value >= 65 && value <= 90
			value += key
			if value >= 65 && value <= 90
				return value.chr
			else
				rest_value = value - 90
				value = 64 + rest_value
				return value.chr
			end
		else #downcase de 97 to 122
			value += key
			if value >=97 && value <= 122
				return value.chr
			else
				rest_value = value - 122
				value = 96 + rest_value
				return value.chr
			end
		end
	end
end
def caesar_cipher(message, key)
	if key < 0 || (key.class != Integer) || key > 25
		return "Yo ! Je ne prends que les entiers naturels. TG of 0 to 25"
	end
	crypted_message = ""
	array_of_message = message.chars
	array_of_message.length.times do |i|
		crypted_message += decripte_a_letter(array_of_message[i],key)
	end
	return crypted_message
end
