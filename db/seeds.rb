# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.destroy_all
User.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

todo_list = TodoList.create [
	{ list_name: "Disney Land", list_due_date: "10/30/2017" },
	{ list_name: "Grocery Store", list_due_date: "10/20/2017" },
	{ list_name: "Holiday Party", list_due_date: "12/20/2017" },
	{ list_name: "Christmas", list_due_date: "12/25/2017" }
]

userTim = User.create(login: "Tim", password: "abc123")
userMatt = User.create(login: "Matt", password: "abc123")

account1 = Account.create(account_id: 1, gender: "Male", age: 27, first_name: "Tim", last_name: "Smith", user_id: userTim.id)
account2 = Account.create({account_id: 2, gender: "Male", age: 25, first_name: "Matt", last_name: "Johnson", user_id: userMatt.id})

userTim.todoLists.create({ list_name: "Disney Land", list_due_date: "10/30/2017", user_id: userTim.id })
userTim.todoLists.create({ list_name: "Grocery Store", list_due_date: "10/20/2017", user_id: userTim.id })
userMatt.todoLists.create({ list_name: "Holiday Party", list_due_date: "12/20/2017", user_id: userMatt.id })
userMatt.todoLists.create({ list_name: "Christmas", list_due_date: "12/25/2017", user_id: userMatt.id })

userTim.todoLists[0].todoItems.create({due_date: "10/30/2017", task_title: "Buy tickets", description: "Buy tickets for theme parks"})
userTim.todoLists[0].todoItems.create({due_date: "10/30/2017", task_title: "Reserve hotel", description: "Reserve hotel room"})
userTim.todoLists[0].todoItems.create({due_date: "10/30/2017", task_title: "Pack", description: "Pack clothes for trip"})
userMatt.todoLists[0].todoItems.create({due_date: "11/20/2017", task_title: "Decorate house", description: "Decorate the house"})

200.times { |index| userTim.todoLists[1].todoItems.create({due_date: "11/16/2017", task_title: "Task#{index}", description: "Description#{index}"})}

userTim.save
userMatt.save



tags = Tag.create [
	{ tag_name: "vacation"},
	{ tag_name: "shopping"},
	{ tag_name: "food"},
	{ tag_name: "finances"}
]


