# require_relative "movie"  -- you don't need this, because in Playlist,
 # it already requires "Movie"

require_relative "playlist"

playlist1 = Playlist.new("Colin's playlist")
movie1 = Movie.new("Rush", 10)
movie2 = Movie.new("Snatch", 8)
movie3 = Movie.new("Die Hard", 9)
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play
# Once again, define what you want. Tell, don't ask!
# also, the way this is set up is call encapsulation, how the movies are stored
# in the playlist is the movie's responsibility,
# # we could put these items in an array, hash or database, doesn't matter
#  Point to take away is that it's encapsulated inside the playlist
# so we have one point of change if we decide on how they are stored later.

playlist2 = Playlist.new("Carl")
playlist2.add_movie(movie3)
movie4 = Movie.new("Talladegga Night's", 20)
playlist2.add_movie(movie4)
playlist2.play
