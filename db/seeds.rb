require 'date'

Sport.destroy_all
Event.destroy_all
User.destroy_all

#ATTENDEES

attendee1 = Attendee.create(user:eric, event:event1, rating:2, review:"De la grosse merde, va chiez connard")
attendee2 = Attendee.create(user:david, event:event5, rating:5, review:"Au top ma belle, tu mérites mieux")
attendee3 = Attendee.create(user:franck, event:event3, rating:3, review:"Pas mal, évite d'écraser des hamsters connard")
attendee4 = Attendee.create(user: walid, event:event5, rating:4, review:"Physiquement c'était top, n'hésite pas à stimuler notre esprit en posant des questions")

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

franck = User.create!(nickname:"Francky",
 email:"franck@gmail.com",
 password: 123456,
 average_rating: 4,
 description: "🧘 Pro de Vélo, à la recheche de sensation")

walid = User.create!(nickname:"Walid",
 email:"walid@gmail.com",
 password: 123456,
 average_rating: 4,
 description: "Recherche à me stimuler intellectuellement")





