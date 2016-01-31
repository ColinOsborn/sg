class Player
  attr_reader :health
  attr_accessor :name

  def score
    @health + @name.length
  end

def initialize(name, health=100)
  @name = name.capitalize
  @health = health
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

def to_s
  "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
end

player1 = Player.new("moe",)
puts player1
player2 = Player.new("curly", 125)
puts player2
player3 = Player.new("larry", 60)
puts player3
player2.blam
puts player2
player2.w00t
puts player2
puts player1.health
puts player2.health
puts player3.health
puts player1.name
puts player2.name
puts player3.name
player3.name = "Lawrence"
puts player3.name

# Vocab
# 1. A *class* is a factory (blueprint) that instantiates *objects*.
# 2. Objects have unique *state* and a common set of *methods*.
# 3. An *instance* variable exists for the life of an *object*.
# 4. Instance methods have access to their object's *instance* variables.
