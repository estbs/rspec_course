RSpec.describe 'before and after' do
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end

  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'example 1' do
    expect(2 * 10).to eq(20)
  end

  it 'example 2' do
    expect(10 - 7).to eq(3)
  end
end