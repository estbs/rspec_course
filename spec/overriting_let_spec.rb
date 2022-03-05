class Language
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe 'overrrite let method' do
  let(:language) { Language.new('Python') }

  it 'should be python language' do
    expect(language.name).to eq('Python')
  end

  context 'change language' do
    let(:language) { Language.new }

    it 'should be ruby language' do
      expect(language.name).to eq('Ruby')
    end
  end
end