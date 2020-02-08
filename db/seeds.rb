# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

User.destroy_all
TodoList.destroy_all

puts "creating user"
annie = User.create(username: "Annie", name: "AZ", password: '123Password', bio: "biobiobiobio", img_url: "url")
alex = User.create(username: "Alex", name: "AS", password: "123Password", bio: "sumsumsumthing", img_url: "url")
puts "done user"
puts "creating todo list"
annietodo = TodoList.create(user: annie, todo_date: "2020/10/20")
alextodo = TodoList.create(user: alex, todo_date: "2020/09/10")
puts "done todo list"