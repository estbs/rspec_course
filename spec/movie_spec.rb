class Actor
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def call_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.call_off_ladder
      puts actor.light_on_fire
      puts actor.act
    end
  end
end

# actor = Actor.new("Brad Pit")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", ready?: true, act: "Any string at all", call_off_ladder: "Ok, lets go", light_on_fire: true) }
  subject { described_class.new(stuntman) }

  describe '#start_shoting method' do
    it 'to do 3 actions' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:call_off_ladder)
      expect(stuntman).to receive(:light_on_fire)
      subject.start_shooting
    end
  end

  describe '#start_shoting method. Part 2' do
    it 'to do 4 actions' do
      expect(stuntman).to receive(:ready?).once
      # expect(stuntman).to receive(:act).twice
      expect(stuntman).to receive(:act).at_least(2).times

      expect(stuntman).to receive(:call_off_ladder).exactly(1).times
      expect(stuntman).to receive(:light_on_fire).at_most(1).times
      subject.start_shooting
    end
  end
end