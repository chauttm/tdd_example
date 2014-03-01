class NumToWords
	@@unit = { 0 => 'không', 1 => 'một', 2 => 'hai', 3=>'ba', 4=>'bốn', 5=>'năm', 6=> 'sáu', 7=> 'bảy', 8=>'tám', 9=>'chín', 10=>'mười'}
	
	def self.read(number)
		return @@unit[number] if number <= 10 
		return "mười #{@@unit[number % 10]}"	
	end
end