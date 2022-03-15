RSpec.describe 'equiality matchers' do
  let(:a) { 3 }
  let(:b) { 3.0 }

  context 'eq matcher' do
    it 'test for value and ignores the type' do
      expect(a).to eq(3.0)
      expect(b).to eq(3)
      expect(a).to eq(b)
    end
  end

  context 'eql matcher' do
    it 'test for value including the type' do
      expect(a).not_to eql(3.0)
      expect(b).not_to eql(3)
      expect(a).not_to eql(b)
    end
  end

  context 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to equal(e)
      expect(c).to be(e)

      expect(d).not_to be(e)
    end
  end
end