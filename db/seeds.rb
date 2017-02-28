# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Users.destroy
# Events.destroy


Event.create(location: "Detroit", date: "2/25 - 2/27", about: "The Motor City Chapter is proud to be hosting the LPA District
        5 Spring *SUPER HERO* themed Regional at the Sheraton Romulus Airport in Romulus, Michigan. Rates are $99.00 per night. Please call (734)729-2900 to make your reservations
                today mention", nightOneEvents: 'Hospitality Room awaits you with "SUPER YUMMY GOODIES" and a *SUPER HERO TALENT SHOW*.', dayTwoEvents: "**Saturday**
            Children's Room / Parents Meeting / General Assembly / Poolside louging / Clothing Exchange / Boccia Ball / Euchre", nightTwoEvents: 'Buffet Banquet with some EXCITING Special "HERO" Guest / Photo Booth / Raffle / & do not forget to wear your FAVORITE SUPER HERO outfit & shine up those super power dancing shoes for a fun night of DJ Dancing!', season: "Spring")

Event.create(season: "Fall", location: "TBA", date: "TBA", about: "This event is still waiting to be announced!")

User.create(fullName: "Admin", email: "admin@admin.com", password: "adminPassword", chapter:"23", address: "123 Main St.", phoneNumber: "222-223-3344")
User.create(fullName: "Collin", email: "collin@gmail.com", password: "password", chapter: "1", address: "1st street", phoneNumber: "222342234")
