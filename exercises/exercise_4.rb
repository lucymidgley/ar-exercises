require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts("The number of stores is:", Store.count)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each{|store| 
puts(store.name, store.annual_revenue)}

@womens_stores_low_rev = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)
@womens_stores_low_rev.each{|store| 
  puts(store.name, store.annual_revenue)}