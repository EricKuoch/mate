# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or Created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.Create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.Create(name: 'Luke', movie: movies.first)

require 'date'

Sport.destroy_all
Event.destroy_all
User.destroy_all


#SPORTS

football = Sport.create!(name: "Football")
pétanque = Sport.create!(name:"Pétanque")
tennis = Sport.create!(name:"Tennis")
running = Sport.create!(name:"Running")
cycling = Sport.create!(name:"Cycling")
yoga = Sport.create!(name:"Yoga")


#EVENTS

event1 = Event.create!(
 title:"Partie de Five, Dev vs Data",
 description:"Très sympa et très chaud pour se caler sur le lundi (à chaque fois il n’y a vraiment personne donc on sera qu’entre nous)",
 location:"Le Perchoir, Paris",
 duration: 2,
 start_time: DateTime.new(2020,9,4,16),
 number_of_participants: 9,
 sport:football)
puts "create #{event1.title}"

event2 = Event.create!(
 title: "Pétanque chez Bouboule",
 description: "Petite pétanque après le travail, et pourquoi pas une bière  ",
 location:"Chez Bouboule, Paris",
 duration: 2,
 start_time: DateTime.new(2020,9,4,16),
 number_of_participants: 3,
 sport:pétanque)
puts "create #{event2.title}"


event3 = Event.create!(
 title:"Ascension du col de la Croix ",
 description:"Cherche cycliste agueri pour faire la montée de ce col en cette météo sublime",
 location:"Col de la Croix",
 duration: 2,
 start_time: DateTime.new(2020,9,4,16),
 number_of_participants: 2,
 sport:cycling)
puts "create #{event3.title}"


event4 = Event.create!(
 title:"Match de Tennis en 2 set",
 description:"Recherche adversaire niveau 3/6 pour prendre du plaisir avec la raquette",
 location:"La foret de St Scène",
 duration: 1,
 start_time: DateTime.new(2020,9,4,16),
 number_of_participants: 1,
 sport:tennis)
puts "create #{event4.title}"


event5 = Event.create!(
 title:"Yoga avec les filles",
 description:" Retrouvez aujourd'hui Sothiya à 12h à Gaudelet pour votre cours de Yoga, ce sera le moment de prendre une pause pour vous détendre",
 location: "Villa Gaudelet, Paris",
 duration: 3,
 start_time: DateTime.new(2020,9,4,16),
 number_of_participants: 6,
 sport:yoga)
puts "create #{event5.title}"


#USERS

eric = User.create!(nickname:"rico",
 email:"eric@gmail.com",
 password: 123456,
 average_rating: 5,
 description:"🎳 Joueur amateur de Pétanque, niveau B3. Vous me trouverez dans le sud de la France")



david = User.create!(nickname:"Davido",
 email:"david@gmail.com",
 password: 123456,
 average_rating: 2,
 description: "🧘 Pratiquant de Yoga en salle ou en nature.")













