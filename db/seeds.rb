# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
Activity.destroy_all

ecatepec = Location.create!(name: "Ecatepec")

bungie = Activity.create!(name: "Bungie", location_id: 5)
paracaidas = Activity.create!(name: "Paracaidas", location_id: 5)

p 'Created all the seeds'