RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # stunmant = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)
    # expect(stunmant.fall_off_ladder).to eq('Ouch')
    # expect(stunmant.light_on_fire).to eq(true)

    # stunmant = double('Mr. Danger')
    # allow(stunmant).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stunmant.fall_off_ladder).to eq('Ouch')

    stunmant = double('Mr. Danger')
    allow(stunmant).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stunmant.fall_off_ladder).to eq('Ouch')
    expect(stunmant.light_on_fire).to eq(true)
  end
end