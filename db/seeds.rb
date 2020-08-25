require 'date'
require "open-uri"
Attendee.destroy_all
Event.destroy_all
Sport.destroy_all
User.destroy_all


#SPORTS

file = URI.open('https://simpleicon.com/wp-content/uploads/football.png')
file_photo = URI.open('https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

football = Sport.create!(name: "Football")
football.icon.attach(io: file, filename: 'ball.png', content_type: 'image/png')
football.icon.attach(io: file_photo, filename: 'football.png', content_type: 'image/png')

puts "#{football.name} created"

pétanque = Sport.create!(name:"Pétanque")
tennis = Sport.create!(name:"Tennis")
running = Sport.create!(name:"Running")
cycling = Sport.create!(name:"Cycling")
yoga = Sport.create!(name:"Yoga")

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

walid = User.create!(nickname:"Walidos",
 email:"walid@gmail.com",
 password: 123456,
 average_rating: 4,
 description: "Recherche à me stimuler intellectuellement à travers le Yoga")

zac = User.create!(nickname:"Zachy",
 email:"zac@gmail.com",
 password: 123456,
 average_rating: 3,
 description: "J'adore le foot, cherche à toucher un peu le ballon le weekend")

stephane = User.create!(nickname:"Steph",
 email:"stephane@gmail.com",
 password: 123456,
 average_rating: 1,
 description: "Fan de Tennis, joueur de Normandie")

nicolas = User.create!(nickname:"Nico",
 email:"nicolas@gmail.com",
 password: 123456,
 average_rating: 2,
 description: "Joueur de pétanque sur Paris, tout est dans la souplesse du poignet")

matthieu = User.create!(nickname:"Mat Mat",
 email:"matthieu@gmail.com",
 password: 123456,
 average_rating: 4,
 description: "Je vis pour la course, que ce soit en forêt ou en ville. Petite préference pour le butte Chaumont")

mina = User.create!(nickname:"Mina",
 email:"mina@gmail.com",
 password: 123456,
 average_rating: 5,
 description: "Cherche à prendre du plaisir à travers le Vélo, seulement en montagne")

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

event6 = Event.create!(
 title:"Course à pied dans le 11ème",
 description:" Retrouvez moi aujourd'hui à 12h à Gaudelet pour 1h de footing, ça va être cool",
 location: "Villa Gaudelet, Paris",
 duration: 1,
 start_time: DateTime.new(2020,9,4,12),
 number_of_participants: 5,
 sport:running)
puts "create #{event5.title}"

event7 = Event.create!(
 title:"Football entre mec",
 description:"Salut les gars, on est combien aujourd'hui ? ",
 location: "Stade de France",
 duration: 2,
 start_time: DateTime.new(2020,9,4,19),
 number_of_participants: 22,
 sport:football)
puts "create #{event5.title}"


#ATTENDEES

attendee1 = Attendee.create!(user:eric, event:event1, rating:2, review:"De la grosse merde, va chiez connard")
attendee2 = Attendee.create!(user:david, event:event5, rating:5, review:"Au top ma belle, tu mérites mieux")
attendee3 = Attendee.create!(user:franck, event:event3, rating:3, review:"Pas mal, évite d'écraser des hamsters connard")
attendee4 = Attendee.create!(user:walid, event:event5, rating:4, review:"Physiquement c'était top, n'hésite pas à stimuler notre esprit en posant des questions")
attendee5 = Attendee.create!(user:zac, event:event7, rating:4, review:"Au top les mecs")
attendee6 = Attendee.create!(user:mina, event:event3, rating:2, review:"La prochaine fois évite de matter mon cul toute la montée")



