# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Event.destroy_all

#data
# require_relative './attendence_data.rb'
# require_relative './event_data.rb'
#
# # Attendence.destroy_all
# Event.destroy_all
#
# # attendence_data = get_attendence_data()
# event_data = get_event_data()
#
# attendence_data.each_pair do |event_location, attendences|
#   info = event_data[event_location]
#   current_event = Event.create!({
#     location:   info[:location],
#     date:       info[:date],
#     about:      info[:about],
#     nightOneEvents:   info[:nightOneEvents],
#     dayTwoEvents: info[:dayTwoEvents],
#     nightTwoEvents: info[:nightTwoEvents],
#     season:      info[:season]
#   })
#
#     # attendences.each do |attendence|
#     #   info = attendence_data[event_location]
#     #   Attendence.create!({
#     #     fullName:   info[:fullName],
#     #     email:      info[:email],
#     #     password:   info[:password],
#     #     chapter:    info[:chatper],
#     #     address:    info[:address],
#     #     phoneNumber:  info[:phoneNumber],
#     #     event:    current_event
#     #     })
#     # end
#
# end
spring2017 = Event.create(location: "Detroit", date: "3/25 - 3/27",
about: "asdfasdf",
night_one_events: 'Hospitality Room awaits you with "SUPER YUMMY GOODIES" and a *SUPER HERO TALENT SHOW*.',
day_two_events: "**Saturday** Children's Room / Parents Meeting / General Assembly / Poolside louging / Clothing Exchange / Boccia Ball / Euchre",
night_two_events: 'Buffet Banquet with some EXCITING Special "HERO" Guest / Photo Booth / Raffle / & do not forget to wear your FAVORITE SUPER HERO outfit & shine up those super power dancing shoes for a fun night of DJ Dancing!',
season: "Spring 2017")
fall2017 = Event.create(location: "TBA", date: "TBA", season: "Fall 2017")

Attendee.create(full_name: "Dee Dee Allemon",
email: "d@gmail.com",
password: "abcd1234",
chapter: "23",
address: "123 Main St.",
phoneNumber: "1234512634", event: spring2017)

Attendee.create(full_name: "Collin",
email: "c@c.com",
password: "1234",
chapter: "1",
address: "Somewhere",
phoneNumber: "123456123",
event: spring2017)
