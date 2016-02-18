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
