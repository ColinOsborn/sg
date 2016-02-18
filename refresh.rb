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



# to run a method, we call it by name
# wanna call it with someone's name? add an arguement or Parameter to the method


#method calling another method


# A Class is a template or a blueprint for buildiing objects,
## We instantiate or (initialize) objects from the class, each object has common behaviour
#  but different values from the state.
# All ruby strings have common behaviour like reverse or upcase etc

 # State + behaviour = Object
 #
