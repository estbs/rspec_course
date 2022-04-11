RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'should include one substring' do
      expect(subject).to include('hot')
      expect(subject).to include('choco')
    end

    it { is_expected.to include('hot') }
    it { is_expected.to include('late') }
  end

  describe [1, 2, 3] do
    it 'should include one or more elements of the array' do
      expect(subject).to include(1, 2)
      expect(subject).to include(3)
    end

    it { is_expected.to include(1, 2) }
    it { is_expected.to include(3) }
  end

  describe ({ a: 2, b: 3}) do
    it 'should include one or more keys of the hash' do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :a)
    end

    it { is_expected.to include(a: 2) }
    it { is_expected.to include(a: 2, b: 3) }
  end
end