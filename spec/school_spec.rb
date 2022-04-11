class School
  attr_reader :name, :students

  def initialize(name)
    @name = name
    @students = []
  end
end

RSpec.describe 'school' do
  let(:school) { School.new('Beverly Hills High School') }

  it 'has a name' do
    expect(school.name).to eq('Beverly Hills High School')
  end

  it 'should start off with no students' do
    expect(school.students).to eq([])
  end
end