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
@store2.employees.create(first_name: "", last_name: "blip", hourly_rate: 60).valid?
@store2.employees.create(first_name: "bloop", last_name: "", hourly_rate: 60).valid?
Employee.create(first_name: "bloop", last_name: "blip", hourly_rate: 60).valid?
bloop = Store.new :name => "Bl", :annual_revenue => 190000, :mens_apparel => true, :womens_apparel => false
bloop.save
@store2.employees.create(first_name: "bloop", last_name: "bloooop", hourly_rate: 30).valid?
@store2.employees.create(first_name: "bloop", last_name: "bloooop", hourly_rate: 320).valid?
@store2.employees.create(first_name: "bloop", last_name: "bloooop", hourly_rate: 45.5).valid?
blop = Store.new :name => "Bl", :annual_revenue => 0, :mens_apparel => true, :womens_apparel => false
blop.save
blooop = Store.new :name => "Blbkjn", :annual_revenue => 190000, :mens_apparel => false, :womens_apparel => false
blooop.save

store_name = gets.chomp
@new_store = Store.new :name => store_name
@new_store.save

puts "Name error: #{@new_store.errors.details[:name]}"
puts "Annual Revenue error: #{@new_store.errors.details[:annual_revenue]}"
puts "Men's apparel error: #{@new_store.errors.details[:mens_apparel]}"
puts "Women's apparel error: #{@new_store.errors[:womens_apparel]}"
# puts @new_store.errors[:womens_apparel]