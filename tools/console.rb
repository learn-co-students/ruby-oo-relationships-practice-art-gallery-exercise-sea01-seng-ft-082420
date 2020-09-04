require_relative '../config/environment.rb'

mary = Artist.new("Mary Brown", 28)
tom = Artist.new("Tom Schwarzkopf", 5)
zelda = Artist.new("Zelda Harina", 17)

modern = Gallery.new("Modern Gallery", "New York")
old = Gallery.new("Old Gallery", "Seattle")

house = Painting.new("Old House", 78000, mary, modern)
school = Painting.new("My lovely school", 5000, mary, old)
banana = Painting.new("Banana forgotten by a girl", 10000, zelda, modern)


binding.pry

puts "Bob Ross rules."
