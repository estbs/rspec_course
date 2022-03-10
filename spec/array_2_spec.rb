RSpec.describe Array do
  subject(:sally) do
    [ 'item1','item2' ]
  end

  it 'Should has length 2' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'Should has equal to the origin array' do
    expect(sally).to eq([ 'item1','item2' ])
  end

end