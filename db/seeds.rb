require 'faker'

u = User.new(
  email: 'bob@bob.com', 
  password: 'password', 
  password_confirmation: 'password')
u.save


u = User.new(
  email: 'john@john.com', 
  password: 'password', 
  password_confirmation: 'password')
u.save


u = User.new(
  email: 'chris@chris.com', 
  password: 'password', 
  password_confirmation: 'password')
u.save

todos = []
15.times do
  todos << Todo.create(
    description: Faker::Lorem.words(rand(1..10)).join(" "),
    #user: u
  )
end

lists = []
15.times do
  lists << List.create(
    name: Faker::Lorem.words(rand(1..10)).join(" "), 
    #user: u
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Todo.count} todos created"
puts "#{List.count} lists created"