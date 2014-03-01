require 'num_to_words'

describe NumToWords do
	cases = { 0 => 'không', 1 => 'một', 2 => 'hai', 3=>'ba', 4=>'bốn', 5=>'năm', 6=> 'sáu', 7=> 'bảy', 8=>'tám', 9=>'chín', 10=>'mười'}
	
	cases.each do |number, word|   
		it "can read 0 to 10" do
			expect(NumToWords.read(number)).to eq(word)
		end
	end
	
	
	cases = { 11 => 'mười một', 12 => 'mười hai', 19=>'mười chín', 15 => 'mười lăm'}
	cases_3 = { 20 => 'hai mươi', 34 => 'ba mươi tư'}
	
	cases.each do |number, word|   
		it "reads numbers from 11 to 19" do
			expect(NumToWords.read(number)).to eq(word)
		end
	end
  
end
