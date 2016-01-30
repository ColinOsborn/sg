def say_hello(name, health=100)
  current_time = Time.new
  current_time.strftime("%I:%M:%S")
  "I'm #{name.capitalize} with a health of #{health} as of #{current_time}."
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)
