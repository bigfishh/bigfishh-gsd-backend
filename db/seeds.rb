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



family = Category.create(name: "Family Event")
social = Category.create(name: "Social Event")
work = Category.create(name: "Work-Related Event")
alone = Category.create(name: "Self-love")


eatfood = Item.create(todo_list: annietodo, category: social, name: "hangout", description: "Lunch with Jessie", completed: true)

planvacay = Item.create(todo_list: alextodo, category: family, name: "plan family trip", description: "Research places to visit in Paris", completed: false)


followalex = Follow.create(follower_id: annie, following_id: alex)
followannie = Follow.create(follower_id: alex, following_id: annie)