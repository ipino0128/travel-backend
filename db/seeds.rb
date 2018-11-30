# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "isabelle")
User.create(username: "john")

Destination.create(name: "NYC")
Destination.create(name: "Honolulu")

Itinerary.create(description: "Statue of liberty helicopter ride...", user_id: 1, destination_id: 1)
Itinerary.create(description: "Mountains and volacanoes and ...", user_id: 1, destination_id: 2)
Itinerary.create(description: "Moma and central park...", user_id: 2, destination_id: 1)
