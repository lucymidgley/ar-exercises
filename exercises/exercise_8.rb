require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"
j = @store2.employees.create!(first_name: "Janice", last_name: "Joplin", hourly_rate: 10)
puts j.password