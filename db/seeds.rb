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
Category.destroy_all
Item.destroy_all
Follow.destroy_all

puts "creating user"
annie = User.create(username: "Annie", name: "AZ", password: 'a', bio: "biobiobiobio", img_url: "https://avatars2.githubusercontent.com/u/24644341?s=460&v=4")
alex = User.create(username: "Alex", name: "AS", password: "a", bio: "sumsumsumthing", img_url: "https://avatars2.githubusercontent.com/u/43193919?s=460&v=4")
puts "done user"
puts "creating todo list"
annietodo = TodoList.create(user: annie, todo_date: "2020/10/20")
annietodo2 = TodoList.create(user: annie, todo_date: "2020/11/20")

alextodo = TodoList.create(user: alex, todo_date: "2020/09/10")
puts "done todo list"



family = Category.create(name: "Family Event")
social = Category.create(name: "Social Event")
work = Category.create(name: "Work-Related Event")
alone = Category.create(name: "Self-love")


eatfood2 = Item.create(todo_list: annietodo2, category: social, name: "hangout", description: "Lunch with Patty", completed: true)

eatfood = Item.create(todo_list: annietodo, category: social, name: "hangout", description: "Lunch with Jessie", completed: true)

finproj = Item.create(todo_list: annietodo, category: work, name: "finish the project", description: "mod-4 proj", completed: false)

planvacay = Item.create(todo_list: alextodo, category: family, name: "plan family trip", description: "Research places to visit in Paris", completed: false)


# followalex = Follow.create(follower_id: annie, following_id: alex)
# followannie = Follow.create(follower_id: alex, following_id: annie)