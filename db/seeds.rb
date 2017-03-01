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
require_relative './attendence_data.rb'
require_relative './event_data.rb'

Attendence.destroy_all
Event.destroy_all

attendence_data = get_attendence_data()
event_data = get_event_data()

attendence_data.each_pair do |event_location, attendences|
  info = event_data[event_location]
  current_event = Event.create!({
    location:   info[:location],
    date:       info[:date],
    about:      info[:about],
    nightOneEvents:   info[:nightOneEvents],
    dayTwoEvents: info[:dayTwoEvents],
    nightTwoEvents: info[:nightTwoEvents],
    season:      info[:season]
  })

    attendences.each do |attendence|
      info = attendence_data[event_location]
      Attendence.create!({
        fullName:   info[:fullName],
        email:      info[:email],
        password:   info[:password],
        chapter:    info[:chatper],
        address:    info[:address],
        phoneNumber:  info[:phoneNumber],
        event:    current_event
        })
    end
end
