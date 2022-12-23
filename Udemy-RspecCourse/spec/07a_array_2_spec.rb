RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end
  it 'has length of two' do
    expect(subject.length).to eq(2)

    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'subject and sally are the same' do
    expect(subject).to eq(sally)
  end
end