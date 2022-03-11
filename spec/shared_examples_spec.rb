RSpec.shared_examples 'an object with length 3' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'an object with length 3'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'an object with length 3'
end

RSpec.describe Hash do
  subject {
    { a: 1, b: 2, c: 3}
  }
  include_examples 'an object with length 3'
end

class DataSource
  def length
    3
  end
end

RSpec.describe DataSource do
  include_examples 'an object with length 3'
end