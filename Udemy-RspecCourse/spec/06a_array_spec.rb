RSpec.describe Array do
  it 'has length of zero' do
    expect(subject.length).to eq(0)

    subject.push(12)
    expect(subject.length).to eq(1)
  end
end