require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# p = @store2.employees.create(first_name: "", last_name: "Bogie", hourly_rate: 10)
# p = @store2.employees.create(first_name: "Nelly", last_name: "", hourly_rate: 10)
# p = @store2.employees.create(first_name: "Nelly", last_name: "Bogie", hourly_rate: 1000)
# p = @store2.employees.create(first_name: "Nelly", last_name: "Bogie", hourly_rate: 13.50)
# p = @store2.employees.create(first_name: "Nelly", last_name: "Bogie", hourly_rate: 10)
# p = Employee.create(first_name: "Nelly", last_name: "Bogie", hourly_rate: 10)
# p = Store.create(name: "Bu", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
# p = Store.create(name: "Burnaby", annual_revenue: -1, mens_apparel: true, womens_apparel: true)
# p = Store.create(name: "Burnaby", annual_revenue: 1.5, mens_apparel: true, womens_apparel: true)
# p = Store.create(name: "Burnaby", annual_revenue: 10000, mens_apparel: false, womens_apparel: false)
puts "Please enter a store name"
store_new = gets.chomp
p = Store.create(name: store_new)
errors = p.errors.messages
errors.each{|message|
puts message}