RSpec.describe Hash do # can replace Hash with the class that is being tested
  # let(:my_hash) { {} }

  it 'should start off empty' do
    expect(subject.length).to eq(0) # note the use of subject -- refers to the object in the describe
    subject[:some_key] = "Some Value"
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end


end