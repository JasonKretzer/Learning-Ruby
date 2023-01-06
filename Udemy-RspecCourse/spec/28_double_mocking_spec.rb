# in the examples below, all 3 blocks do the exact same thing!

RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # stuntman = double('Mr. Danger')
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman.fall_off_ladder).to eq('Ouch')

    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end

  it 'provides a scratch area for the assignments' do
    db_connection = double('Database Connection', connect: true, disconnect: 'Goodbye')
    expect(db_connection.connect).to eq(true)
    expect(db_connection.disconnect).to eq('Goodbye')

    fs = double('File System')
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)
    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to eq(false)
  end
end

# allow is a method that takes a double and assigns a method
# that can be attached to the double so that it can be called

# receive and receive_messages tell the methods defined by allow to return values
# otherwise they return nil by default

# the difference between receive and receive_messages, is that the latter can take multiple methods
