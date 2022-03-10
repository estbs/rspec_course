RSpec.describe Hash do
  subject do
    {
      a: 1,
      b: 2
    }
  end

  it 'Should has length 2' do
    expect(subject.length).to eq(2)
  end
end