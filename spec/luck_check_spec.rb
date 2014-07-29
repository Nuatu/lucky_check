require 'rspec'
require 'luck_check'

describe 'luck_check' do
	it "takes a number and returns 'true' if the left half IS equal to the right half" do
		expect(luck_check('111012')).to eq(true)
	end

	it "takes a number and returns 'false' if the left half is NOT equal to the right half" do
		expect(luck_check('111123')).to eq(false)
	end

	it "takes a number and returns 'invalid' if the length of input is NOT even" do
		expect(luck_check('111')).to eq("input string is invalid, odd number of characters")
	end
end
