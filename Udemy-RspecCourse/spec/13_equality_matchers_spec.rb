RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  # this is similar to the php ===
  describe 'eql matcher' do
    it 'tests for value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)

      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end
  end

  # behind the scenes equal and be are the exact same thing
  # this comparison checks if they are the same instance of an object, not just value
  # similar to how in C/C++ that when you compare pointers(not what they point to)
  # it checks the value of the addresses
  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)

      expect(c).to equal(e)
      expect(c).to be(e)

      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end