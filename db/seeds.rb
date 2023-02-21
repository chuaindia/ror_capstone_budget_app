# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# USERS
user1 = User.create(name: "Chua")
user2 = User.create(name: "Surya")

# GROUPS
group1 = Group.create(name: "Group1", author_id: user1, icon: "https://www.flaticon.com/free-icon/gluten-free_4891616")
group2 = Group.create(name: "Group2", author_id: user1, icon: "https://www.flaticon.com/free-icon/fair-ship_936631")

# TRANRACTS
transaract1 = Transaract.create(name: "Transract1", author_id: user1, amount: 50)
transaract2 = Transaract.create(name: "Transract2", author_id: user1, amount: 88)