# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 10.times do 
#    User.create( :name => Faker::Name.name, :age => rand(18,60) )
# end
# 10.times do 
#    Address.create( :city => Faker::Address.city )
# end
10.times do 
   Customer.create( :name => Faker::Name.name, :address_id => rand(10) )
end
# 30.times do 
#    AddressesCustomer.create( :address_id => rand(9), :customer_id => rand(30) )
# end