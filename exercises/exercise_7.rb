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
class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3} 
  validates :annual_revenue, numericality: {only_interger: true, greater_than: 0}
end

class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store_id, presence: true 
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

puts "Store name:"
@user_store_name = gets.chomp 
store = Store.create(name: "#{@user_store_name}") 
# puts store.errors.messages
