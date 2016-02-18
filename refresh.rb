def weekday
  current_time = Time.new
  today = current_time.strftime("%A")
  # "today" technically isn't needed in this instance because the last
  # line of a method is the one that's run automatically.
end

def movie_listing(title, rank=0)
  today = weekday
  # here you are, calling the "weekday" method right there.
  # "#{title.capitalize} has a rank of #{rank} as of #{today}"
  # since you are calling it on the above methd, and also HERE! above, you can
  # instead, just re-write it like so down below
  "#{title.capitalize} has a rank of #{rank} as of #{weekday.upcase}"
  # once again, this works because weekday is being called just above
end

puts movie_listing("snatch", 9)
puts movie_listing("goldfinger", 7)

################################################################################

class Movie
  attr_reader :rank
              # :title -- no longer need this here, because attr_accessor does both
  # Remember, this is just like writing a method
  attr_accessor :title

  def initialize(title, rank)
    @title = title.capitalize
    @rank = rank
    # @rank is an instance variable and, rank is a local variable.
    puts "Created a movie object with title #{@title} and a rank of #{@rank}"
    # Think of this puts statement whenever you use initialize
  end

  def normalized_rank
    @rank / 5
    # inclination is to use this on the initialize method, however, once again, it can just
    # as easily be called below, as seen on line -- 78
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  # def title=(new_title)
  #   @title = new_title
  # end -- you no longer need this, because you added the attr_writer

  # def title
  #   @title
  # end --- you no longer need this, because you added the attr_reader

  def to_s
    # puts "#{@title} has a rank of #{@rank}"
    puts "#{@title} has a rank of #{normalized_rank}"
    # remember, this is a method call right above
  end
end

movie1 = Movie.new("Rush", 10)
movie1.thumbs_up
puts movie1
# .listing, is the instance method here!
movie2 = Movie.new("Snatch", 8)
movie2.thumbs_down
puts movie2
movie3 = Movie.new("Die Hard", 9)
puts movie3

movie2.title = "Lock Stock, Two Smoking Barrels"
puts movie2
puts movie1.normalized_rank

movies = [movie1, movie2, movie3]

movies.each do |m|
  m.thumbs_up
  puts movies
end


chasis = %w(Mclaren Renault Ferrari)
puts chasis
#  puts chasis in pry!
# beta = %w(_ , .)
#When you call new, it sets up some memory for that object,
# but it doesn't initialize any of it's state. Instead, New will pass in the
# the parameters, "Rush", 10

# to run a method, we call it by name
# wanna call it with someone's name? add an arguement or Parameter to the method


#method calling another method


# A Class is a template or a blueprint for buildiing objects,
## We instantiate or (initialize) objects from the class, each object has common behaviour
#  but different values from the state.
# All ruby strings have common behaviour like reverse or upcase etc

 # State + behaviour = Object
 #

# Tell, don't ask
#  Tell the object what to do, we tell an object, what to do by calling a method

# set up state -- by setting up instance variables -- look at the photos!
