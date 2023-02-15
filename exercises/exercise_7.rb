require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Apparelvalidator < ActiveModel::Validator
  def validate(record)
    if !(record.mens_apparel or record.womens_apparel) 
       record.errors[:add] << "The store need include at least one type of apparel"
    end
  end
end


class Storedata < Store
  validates :name,length:{minimum:3}
  validates :annual_revenue, numericality:{only_integer:true, greater_than_or_equal_to:0}
  validates_with Apparelvalidator
end

class Employeedata<Employee
  validates :first_name,:last_name,:store_id,presence:true
  validates :hourly_rate,numericality:{only_integer:true,greater_than_or_equal_to:40,less_than_or_equal_to:200}
  validates_associated :store
end

puts ("Pleast provide the name of the new store")
@stroename = gets.chomp
puts Storedata.create(name:@stroename).errors.details


puts Employeedata.create(first_name:'ak',last_name:"kk",store_id:'').errors.details
