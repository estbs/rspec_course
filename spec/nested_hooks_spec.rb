RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'is just an math operation' do
    expect(1 + 2).to eq(3)
  end

  context 'nested context' do
    before(:context) do
      puts 'INNER Before context'
    end
  
    before(:example) do
      puts 'INNER Before example'
    end

    it 'is just another math operation' do
      expect(5 + 2).to eq(7)
    end
  end
end