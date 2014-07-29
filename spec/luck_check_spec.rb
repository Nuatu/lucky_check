require 'rspec'
require 'luck_check'

describe 'luck_check' do
	it "takes a number and returns TRUE if the left half IS equal to the right half" do
		expect(luck_check('111012')).to eq(true)
	end

	it "takes a number and returns FALSE if the left half IS NOT equal to the right half" do
		expect(luck_check('111123')).to eq(false)
	end
end
