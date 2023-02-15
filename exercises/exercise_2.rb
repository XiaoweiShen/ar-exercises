require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id:"1")
puts "1.id=",@store1.id

@store2 = Store.second
puts @store2.id

@store1.name = "Tttttte"
@store1.save

puts "=======",@store1.name,@store1.annual_revenue

# @store1.update(name:"aakkik")

# puts "=======",@store1.name,@store1.annual_revenue