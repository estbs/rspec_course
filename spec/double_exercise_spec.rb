RSpec.describe 'Excercises' do
  it 'allows connect and disconnect' do
    db = double('Database connection', connect: true, disconnect: 'Goodbye')
    
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('Goodbye')
  end

  it 'allos to read and write' do
    fs = double('File System')
    allow(fs).to receive(:read).and_return('Romeo and Juliet')
    allow(fs).to receive(:write).and_return(false)

    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to eq(false)
  end
end