RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd and be > 20 }
end

RSpec.describe 'Caterpillar' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('Cat') and end_with('pillar')
  end

  it { is_expected.to start_with('Cat').and end_with('pillar') }
end

RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for multitple possibilities' do
    expect(subject.sample).to eq(:usa) or eq(:canada).or eq(:mexico)
  end
end