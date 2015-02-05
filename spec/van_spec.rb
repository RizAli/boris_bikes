require 'van'

describe Van do 
	let (:van){ Van.new(capacity: 20) }

	it 'can have a custom capacity' do
		expect(van.capacity).to eq(20)
	end
end
