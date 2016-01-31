def say_hello(name, health=100)
  current_time = Time.new
  current_time.strftime("%I:%M:%S")
  "I'm #{name.capitalize} with a health of #{health} as of #{current_time}."
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)

# Classes can bring together "states" and "behaviors" all in one
# State + behaviour = object
class Movie
  attr_reader :rank
  attr_writer :title

  attr_accessor :title
  # def title=(new_title)
  #   @title = new_title
  # end
  #  The attr_writer above makes it so you no longer need this def
  # This is sometimes called a getter method - attr_reader
  # returns the instance variable -- attr_reader
  # setter method - attr_writer - sets the value of the instance variable
  # attr_accessor - same as writing both of these
  # read and write and attribute to the outside world? Then use attr_accessor


  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end

  def normalized_rank
    @rank / 10
  end

  def thumbs_up
    @rank = @rank + 1
  end

  def thumbs_down
    @rank = @rank - 1
  end
  #This is an instance method

  def to_s
    "#{@title} has a rank of #{@rank}"
  end
end

movie1 = Movie.new("happy gilmore", 10)
puts movie1

movie2 = Movie.new("billy Madison", 8)
puts movie2

movie3 = Movie.new("goldfinger")
puts movie3.title
puts movie3.rank
movie1.title = "Deez nuts!"
puts movie1.title
puts movie1.normalized_rank
