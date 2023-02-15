require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :store
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Xev", last_name: "Bell", hourly_rate: 160)
@store3.employees.create(first_name: "Zoey", last_name: "Virani", hourly_rate: 40)
@store1.employees.create(first_name: "Lauren", last_name: "Virani", hourly_rate: 50)
@store2.employees.create(first_name: "Xev", last_name: "Belling", hourly_rate: 150)
@store3.employees.create(first_name: "Zoey", last_name: "KK", hourly_rate: 55)