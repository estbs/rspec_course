class ProfessionalWestler
  attr_reader :name, :finishing_movie

  def initialize(name, finishing_movie)
    @name = name
    @finishing_movie = finishing_movie
  end
end

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWestler.new('The rock', 'Fast and Furious') do
    it 'check for object attribute and proper value' do
      expect(subject).to have_attributes(name: 'The rock')
      expect(subject).to have_attributes(name: 'The rock', finishing_movie: 'Fast and Furious')
    end

    it { is_expected.to have_attributes(name: 'The rock') }
    it { is_expected.to have_attributes(name: 'The rock', finishing_movie: 'Fast and Furious') }
  end
end