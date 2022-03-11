RSpec.describe 'Shorthand syntax' do
  subject { 5 }

  context 'With classic syntax' do
    it 'Should be equal to 5' do
      expect(subject).to eq(5)
    end
  end

  context 'With one-liner syntax' do
    # Reference the subject
    it { is_expected.to eq(5) }
  end
end