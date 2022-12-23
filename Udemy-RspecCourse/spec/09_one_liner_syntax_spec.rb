RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do
    # note that is_expected is only available when using a subject
    it { is_expected.to eq(5) } # one liner equivalent to the do/end/expect block
  end
end