module Twil
	def to_62(num)
		str = ""
		while(num > 0)
			amari = num % 62
			str << to_c(amari)
			num = ( num / 62 ).to_i
			break if num <= 0
		end
		return str.reverse
	end

	def to_c(num)
		ary = ("0".."9").to_a + ("A".."Z").to_a + ("a".."z").to_a
		return ary[num]
	end
	
	def to_num(str)
		sum = 0
		i = 1
		str.reverse!
		str.each_char do |char|
			num = to_10(char)
			sum += num * i
			i *= 62
		end
		return sum
	end
	
	def to_10(char)
		case char
		when "0".."9"
			return char.to_i
		when "A".."Z"
			return char.sum - 55
		when "a".."z"
			return char.sum - 61
		else
			return nil
		end
	end
	module_function :to_62, :to_c
end
