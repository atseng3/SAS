# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Albert Tseng", email: "atseng3@gmail.com", phone_number: "2179793193", position: "manager")

User.create!(name: "Megan Palos", email: "megan@gmail.com", phone_number: "1233211230", position: "manager")

User.create!(name: "Steph Curry", email: "steph@gmail.com", phone_number: "1233211230", position: "staff", manager_id: 1)

User.create!(name: "Eric Marz", email: "eric@gmail.com", phone_number: "1233211230", position: "staff", manager_id: 1)

User.create!(name: "Carlos Delfino", email: "carlos@gmail.com", phone_number: "1233211230", position: "staff", manager_id: 2)

User.create!(name: "Melissa Thompson", email: "melissa@gmail.com", phone_number: "1233211230", position: "staff", manager_id: 2)

User.create!(name: "Brian Chavez", email: "brian@gmail.com", phone_number: "1233211230", position: "staff", manager_id: 2)
