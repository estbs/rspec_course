RSpec.describe Hash do

  context 'When hash do not have any item' do
    it 'Should be empty' do
      expect(subject.length).to eq(0)
    end
  end

  context 'When the hash has items' do
    it 'Should has 1 item' do
      subject[:item] = 'item'
      expect(subject.length).to eq(1)
    end
  end

end