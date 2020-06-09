require_relative '../config/environment.rb'

# create your variables and/or write any tests here


#Tourists
bob = Tourist.new("Bob")
dave = Tourist.new("Dave")
issa = Tourist.new("Issa")

#Landmarks
ladyliberty = Landmark.new("Statue of Liberty", "New York City")
sfbridge = Landmark.new("Golden Gate Bridge", "San Francisco")

#Trips
bob_at_ladyliberty = Trip.new(bob, ladyliberty)
dave_at_sfbridge = Trip.new(dave, sfbridge)

puts "Tourist Tests"
puts "has a name"
puts bob.name == "Bob"
puts "have a .all method"
puts bob 
puts ".all to return all instances"
pp Tourist.all 
puts "Tourist.find_by_name, given a string of a name, returns the **first tourist** whose  name matches"
puts Tourist.find_by_name("Dave") == dave
pp Tourist.find_by_name("Dave")

puts "Landmark Test"
puts "has a name"
puts ladyliberty.name == "Statue of Liberty"

puts "has a city "
puts ladyliberty.city == "New York City"

puts ".all returns all"
pp Landmark.all
# binding.pry

#Trip

  puts ".all returns an array of all trips"
  pp Trip.all
 puts "#tourist returns the tourist who has taken that trip"
  puts bob_at_ladyliberty.tourist == bob
 puts "#landmark returns the landmark visited on the trip"
  puts dave_at_sfbridge.landmark == sfbridge

