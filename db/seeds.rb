# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Todo.destroy_all
Category.create(title: "Today")
Category.create(title: "Upcoming")
Category.create(title: "Later")
Todo.create(category: Category.first, title: "Expedite")
Todo.create(category: Category.second, title: "Procastinate")
Todo.create(category: Category.last, title: "Do something")
