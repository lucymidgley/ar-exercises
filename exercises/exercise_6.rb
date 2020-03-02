require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "John", last_name: "Lennon", hourly_rate: 80)
@store1.employees.create(first_name: "Ringo", last_name: "Starr", hourly_rate: 40)
@store1.employees.create(first_name: "Paul", last_name: "McCartney", hourly_rate: 50)
@store1.employees.create(first_name: "George", last_name: "Harrison", hourly_rate: 20)

@store2.employees.create(first_name: "Brian", last_name: "May", hourly_rate: 90)
@store2.employees.create(first_name: "Freddy", last_name: "Mercury", hourly_rate: 40)
@store2.employees.create(first_name: "John", last_name: "Deacon", hourly_rate: 50)
@store2.employees.create(first_name: "Roger", last_name: "Meddows Taylor", hourly_rate: 80)
@store2.employees.create(first_name: "Mike", last_name: "Grose", hourly_rate: 80)
@store2.employees.create(first_name: "Barry", last_name: "Mitchell", hourly_rate: 80)
@store2.employees.create(first_name: "Doug", last_name: "Bogie", hourly_rate: 80)
