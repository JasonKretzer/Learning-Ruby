RSpec.shared_examples 'a Ruby object with three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

# shared_examples above has a name that is defined as the string
# 'a Ruby object with three elements'
# shared_examples is a magic rspec method that takes the name
# as an argument.
# when include_examples (also a magic rspec method) is called, you pass it
# a name.  Then the shared_examples with that name is called.

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with three elements'
  it 'has contents of [1,2,3]' do
    expect(subject).to eq([1, 2, 3])
  end

  it { is_expected.to eq([1, 2, 3]) }
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a Ruby object with three elements'
end

RSpec.describe Hash do
  subject {{ a: 1, b: 2, c: 3 }}
  include_examples 'a Ruby object with three elements'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'a Ruby object with three elements'
end