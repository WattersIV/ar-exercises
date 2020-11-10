require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end 
class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60) 
@store1.employees.create(first_name: "Bill", last_name: "Watters", hourly_rate: 600) 
@store1.employees.create(first_name: "Salim", last_name: "Dream", hourly_rate: 80) 
@store2.employees.create(first_name: "Meg", last_name: "Vanilli", hourly_rate: 40) 
@store2.employees.create(first_name: "Sam", last_name: "Art", hourly_rate: 550) 

puts @store1.employees.count() #3
puts @store2.employees.count() #2