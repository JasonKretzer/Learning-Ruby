RSpec.describe ' before and after hooks' do
  # NOTE before hook runs once just before the context it is in
  before(:context) do
    puts 'Before context'
  end

  # NOTE after hook runs once just after the context it is currently in
  after(:context) do
    puts 'After context'
  end

  # NOTE before hook runs just before each example
  before(:example) do
    puts 'Before example'
  end

  # NOTE after hook runs just after each example
  after(:example) do
    puts 'After example'
  end

  # NOTE that the puts for after shows up before the output
  # for the example, but trust it is coming after

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(3 - 2).to eq(1)
  end
end