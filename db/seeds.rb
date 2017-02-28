# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy
# Event.destroy

User.create(fullName: "Admin", email: "admin@admin.com", password: "adminPassword", chapter:"23", address: "123 Main St.", phoneNumber: "222-223-3344")
User.create(fullName: "Collin", email: "collin@gmail.com", password: "password", chapter: "1", address: "1st street", phoneNumber: "222342234")

spring = Event.create(event: 1, location: "Detroit", date: "2/25 - 2/27")
