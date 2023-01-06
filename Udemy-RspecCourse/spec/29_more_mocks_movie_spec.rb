# mocking up doubles allows you to stub out classes that have not been developed
# but will be developed.  That way you can still use them for your testing.

class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting


# since the Movie class is dependent upon an actor, we don't want to test the actor parts, just the movie
# create a double of the actor and make sure the methods that the actor needs can be called by movie
# give the double all of the methods an actual actor would have
# you can make rspec enforce that by specifying the number of times each method is invoked
RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", ready?: true, act: 'Any string at all', fall_off_ladder: 'Sure! Lets do it', light_on_fire: true)}
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      # expect(stuntman).to receive(:light_on_fire).once
      # expect(stuntman).to receive(:light_on_fire).exactly(1).times
      expect(stuntman).to receive(:light_on_fire).at_most(1).times

      # expect(stuntman).to receive(:act).twice
      # expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:act).at_least(2).times
      subject.start_shooting
    end
  end
end