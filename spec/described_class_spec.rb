class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  describe 'Using subject' do
    it 'should has the name Boris' do
      expect(subject.name).to eq('Boris')
    end
  end

  describe 'Using let' do
    it 'should has the name Louis' do
      expect(louis.name).to eq('Louis')
    end
  end
end