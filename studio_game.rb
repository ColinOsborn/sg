puts "Welcome!"
greeting = "Welcome!"
3.times do
  puts greeting.upcase
end
puts Time.now

puts 'Colin\'s favorite album is Somewhere Along the Highway'
album = 'Somewhere Along the Highway'
puts 'Colin\'s favorite album is ' + album

rank = 10
puts album + ' has a rank of ' + rank.to_s

puts "#{album} has a rank of #{rank * 2}"

puts "Larry's health is 60"

player1 = "larry"
puts player1
health1 = 60
puts "#{player1}'s health is #{health1 / 9.0}"
# good to note - puts name1 + '\'s' + ' health is ' + health1.to_s works also, single string
# puts "#{name1}'s health is #{health1 / 9.0}"
# puts "#{name1}'s health is #{health1 / 9}"
# Both of these puts different items, so important to know what  is needed
player2 = "curly"
health2 = 125
player3 = "moe"
health3 = 100
puts "Players: \n #{player1} \n #{player2} \n #{player3}"

my_favorite_movie = "Rush"
puts my_favorite_movie

puts "#{my_favorite_movie} is my favorite movie!"

current_time = Time.new
puts "The time is #{current_time}"

#1.3 Larry has a health of 60
puts "#{player1.capitalize} has a health of #{health1}"

#2.1
puts "#{player2.upcase} has a health of #{health2}"
#2.2 Add two lines to the bottom of the program file: change Curly's health variable to point to Larry's health and print our curlys info again
health2 = health1
puts "#{player2.upcase} has a health of #{health2}"
#3.3 Reassign Larry's health variable to be 30. Then print out the name and health of both Players
health1 = 30
puts "#{player1} and #{player2} have the health of #{health1} and #{health2}"
puts "#{player1.capitalize} has a health of #{health1}"
puts "#{player2.upcase} has a health of #{health2}"

#3.1

#3.2 Create variables, then print out so it looks like so
puts "#{player3.capitalize} has a health of #{health3}.".center(50,'*')

#4.1
player4 = "shemp"
health4 = 90
puts "#{player4.capitalize.ljust(30, '.')} #{health4} health."

puts "Who's my receiver?"
#puts is a method -- puts("Who's my receiver?") also works
#Self - always references the "current object" is the default receiver for method calls
#Self - always has a value, changes, depending on where you are
def weekday
  current_time = Time.new
  current_time.strftime("%A")
end

def movie_listing(title, rank=0)
  # current_time = Time.new
  # today = current_time.strftime("%A")
  " #{title.capitalize} has a rank of #{rank} as of #{weekday}"
end

puts movie_listing("goonies", 10)
puts movie_listing("goldfinger", 9)

a_title = "Bait and Switch"



#no Parameters
  #def Welcome
  #puts "Howdy!"
  #end

#One Parameter
  #def welcome(name)
  #puts "Howdy, #{name}!"
  #end

#default Parameter
#def welcome(name="partner")
#puts "Howdy, #{name}!"
#end

#two parameters
#def welcome(name,age)
#puts "howdy, #{name}! You don't look #{age}"
#end
players = [player1, player2, player3]
puts "There are #{players.size} players in the game:"
players.each do |player|
  puts player
end

players.each do |player|
  puts player.health
end
