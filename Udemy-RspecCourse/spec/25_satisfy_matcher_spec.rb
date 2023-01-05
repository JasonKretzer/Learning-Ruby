RSpec.describe 'satisfy matcher' do
  # subject { 'racecar' }
  subject { 'racecars' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse  }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
  end
  # the string 'to be a palindrome' on line 10 is a custom error message
  # for when the word is not a palindrome
end
