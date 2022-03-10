RSpec.describe Array do

  context 'When array do not have any object' do
    it 'Should has length 0' do
      expect(subject.length).to eq(0)
    end
  end

  context 'When array have almost one object' do
    it 'Should has length 1' do
      subject.push 'item1'
      expect(subject.length).to eq(1)
    end
  end
end