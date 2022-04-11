RSpec.describe 'change matcher' do
	subject { [1, 2, 3] }

	it 'check that a method changes object state' do
		expect { subject.push(4) }.to change { subject.length }.by(1) # can be used the from() and to()
	end

	it 'accepts negative arguments' do
		expect { subject.pop }.to change { subject.length }.by(-1)
	end
end