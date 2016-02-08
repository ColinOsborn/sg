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
drivers = ["Alonso", "Vettel", "Räikkönen"]
puts drivers
puts drivers[1]
puts drivers[3]
finns = %w(Rosberg Räikkönen Bottas Hakkinen)
puts finns
drivers_seats = []
drivers_seats[0] = "Palmer"
drivers_seats[2] = "Bottas"
drivers_seats[1] = "Button"
puts drivers_seats
drivers_seats[4] = "Magnussen"
puts drivers_seats
puts finns
#nil --- the abscences of an object
cars = []
cars.push("Mclaren")
puts cars
cars.push("Renault")
cars << "Ferrari"
puts cars
puts cars.size
cars.pop
puts cars
#pop takes out the last item, just like JavaScript

movies = [movie1, movie2, movie3]
puts movies

# movies.each do |movie|
#   movie.thumbs_up
#   puts movie
# end
# a small loop

players = []
puts players

class Playlist
  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def play
    puts "#{@name}'s playlist:"
    puts @movies

    @movies.each do |movie|
      movie.thumbs_up
      puts movie
    end
  end
end
playlist1 = Playlist.new("Colin")
# playlist1.add_movie(movie1)
# playlist1.add_movie(movie2)
# playlist1.add_movie(movie3)
