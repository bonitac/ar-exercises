require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
sum = Store.sum(:annual_revenue)
puts "Total revenue of company: #{sum}"
average = sum/Store.count
puts "Average revenue of stores: #{average}"
more_than_mil = Store.where("annual_revenue > ?", 1000000)


puts more_than_mil.count