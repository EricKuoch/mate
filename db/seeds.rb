require 'date'
require "open-uri"




Attendee.destroy_all
Event.destroy_all
Sport.destroy_all
User.destroy_all


#SPORTS

#football
file = URI.open('https://simpleicon.com/wp-content/uploads/football.png')
file_photo = URI.open('https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
football = Sport.create!(name: "Football")
football.icon.attach(io: file, filename: 'ball.png', content_type: 'image/png')
football.photo.attach(io: file_photo, filename: 'football.png', content_type: 'image/png')

puts "#{football.name} created"

#petanque
file = URI.open('http://simpleicon.com/wp-content/uploads/snooker_3.png')
file_photo = URI.open('https://images.unsplash.com/photo-1595971649687-0901985665a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
pétanque = Sport.create!(name: "pétanque")
pétanque.icon.attach(io: file, filename: 'ball.png', content_type: 'image/png')
pétanque.photo.attach(io: file_photo, filename: 'pétanque.png', content_type: 'image/png')
puts "#{pétanque.name} created"

#tennis
file = URI.open('http://simpleicon.com/wp-content/uploads/tennis.png')
file_photo = URI.open('https://images.unsplash.com/photo-1545809074-59472b3f5ecc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
tennis = Sport.create!(name: "tennis")
tennis.icon.attach(io: file, filename: 'ball.png', content_type: 'image/png')
tennis.photo.attach(io: file_photo, filename: 'tennis.png', content_type: 'image/png')
puts "#{tennis.name} created"

#running
file = URI.open('https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/3073256691536052225-512.png')
file_photo = URI.open('https://images.unsplash.com/photo-1552674605-db6ffd4facb5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
running = Sport.create!(name: "running")
running.icon.attach(io: file, filename: 'ball.png', content_type: 'image/png')
running.photo.attach(io: file_photo, filename: 'running.png', content_type: 'image/png')
puts "#{running.name} created"

#cycling
file = URI.open('http://simpleicon.com/wp-content/uploads/bicycle.png')
file_photo = URI.open('https://images.unsplash.com/photo-1541625602330-2277a4c46182?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
cycling = Sport.create!(name: "cycling")
cycling.icon.attach(io: file, filename: 'ball.png', content_type: 'image/png')
cycling.photo.attach(io: file_photo, filename: 'cycling.png', content_type: 'image/png')
puts "#{cycling.name} created"

#yoga
file = URI.open('https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/17048682711556887340-512.png')
file_photo = URI.open('https://images.unsplash.com/photo-1529693662653-9d480530a697?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80')
yoga = Sport.create!(name: "yoga")
yoga.icon.attach(io: file, filename: 'ball.png', content_type: 'image/png')
yoga.photo.attach(io: file_photo, filename: 'yoga.png', content_type: 'image/png')
puts "#{yoga.name} created"

#USERS

file_avatar = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3c-DkbFLeYyuAhJFwPZ9mFW4rZiUS0HWhYRG8ZZ8k5NE2uG0aCKO54Iemq6A399MHVXRLuSlXuVUGWbn4mzutv2Umc7fyYnW8FJTbK-88CTWd7XpCmVMpMjzqy8CMaDRWIbACfHk70Pvz__fMzXlBdq=w1161-h772-no?authuser=0")
eric = User.create!(nickname:"rico",
 email:"eric@gmail.com",
 password: 123456,
 description:"Joueur amateur de Pétanque🎳")
eric.avatar.attach(io:file_avatar, filename:'eric.png', content_type:'image/png')
eric.save!

file_avatar1 = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3eAH0ngA1qx3P2vSOMTO1XCStLg8uskEDuLjf9_dCKov17hMk-8l0Cka9KW8p9fuyttmYAUXd9lQryDMy9cK4CTR3-FPLh1m-eJF-k7CBRkZRxzDqIz13TloKGMkml01IR6GYWjtR5wRZQ8Bj7gJQat=w1234-h821-no?authuser=0")
franck = User.create!(nickname:"Francky",
 email:"franck@gmail.com",
 password: 123456,
 average_rating: 4.2,
 description: "🧘 Pro de Vélo, à la recheche de sensation")
franck.avatar.attach(io:file_avatar1, filename:'franck.png', content_type:'image/png')

file_avatar2 = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3eAH0ngA1qx3P2vSOMTO1XCStLg8uskEDuLjf9_dCKov17hMk-8l0Cka9KW8p9fuyttmYAUXd9lQryDMy9cK4CTR3-FPLh1m-eJF-k7CBRkZRxzDqIz13TloKGMkml01IR6GYWjtR5wRZQ8Bj7gJQat=w1234-h821-no?authuser=0")
david = User.create!(nickname:"Davido",
 email:"david@gmail.com",
 password: 123456,
 average_rating: 4.3,
 description: "🧘 Pratiquant de Yoga en salle ou en nature.")
david.avatar.attach(io:file_avatar2, filename:'david.png', content_type:'image/png')

file_avatar3 = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3eAH0ngA1qx3P2vSOMTO1XCStLg8uskEDuLjf9_dCKov17hMk-8l0Cka9KW8p9fuyttmYAUXd9lQryDMy9cK4CTR3-FPLh1m-eJF-k7CBRkZRxzDqIz13TloKGMkml01IR6GYWjtR5wRZQ8Bj7gJQat=w1234-h821-no?authuser=0")
walid = User.create!(nickname:"Walidos",
 email:"walid@gmail.com",
 password: 123456,
 average_rating: 4.5,
 description: "Recherche à me stimuler intellectuellement à travers le Yoga")
walid.avatar.attach(io:file_avatar3, filename:'walid.png', content_type:'image/png')

file_avatar4 = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3eAH0ngA1qx3P2vSOMTO1XCStLg8uskEDuLjf9_dCKov17hMk-8l0Cka9KW8p9fuyttmYAUXd9lQryDMy9cK4CTR3-FPLh1m-eJF-k7CBRkZRxzDqIz13TloKGMkml01IR6GYWjtR5wRZQ8Bj7gJQat=w1234-h821-no?authuser=0")
zac = User.create!(nickname:"Zachy",
 email:"zac@gmail.com",
 password: 123456,
 average_rating: 5,
 description: "J'adore le foot, cherche à toucher un peu le ballon le weekend")
zac.avatar.attach(io:file_avatar4, filename:'zac.png', content_type:'image/png')
puts "create #{zac.nickname}"


file_avatar5 = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3eAH0ngA1qx3P2vSOMTO1XCStLg8uskEDuLjf9_dCKov17hMk-8l0Cka9KW8p9fuyttmYAUXd9lQryDMy9cK4CTR3-FPLh1m-eJF-k7CBRkZRxzDqIz13TloKGMkml01IR6GYWjtR5wRZQ8Bj7gJQat=w1234-h821-no?authuser=0")
stephane = User.create!(nickname:"Steph",
 email:"stephane@gmail.com",
 password: 123456,
 average_rating: 1.6,
 description: "Fan de Tennis, joueur de Normandie")
stephane.avatar.attach(io:file_avatar5, filename:'stephane.png', content_type:'image/png')

file_avatar6 = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3eAH0ngA1qx3P2vSOMTO1XCStLg8uskEDuLjf9_dCKov17hMk-8l0Cka9KW8p9fuyttmYAUXd9lQryDMy9cK4CTR3-FPLh1m-eJF-k7CBRkZRxzDqIz13TloKGMkml01IR6GYWjtR5wRZQ8Bj7gJQat=w1234-h821-no?authuser=0")
nicolas = User.create!(nickname:"Nico",
 email:"nicolas@gmail.com",
 password: 123456,
 average_rating: 2,
 description: "Joueur de pétanque sur Paris, tout est dans la souplesse du poignet")
nicolas.avatar.attach(io:file_avatar6, filename:'nicolas.png', content_type:'image/png')

file_avatar7 = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3eAH0ngA1qx3P2vSOMTO1XCStLg8uskEDuLjf9_dCKov17hMk-8l0Cka9KW8p9fuyttmYAUXd9lQryDMy9cK4CTR3-FPLh1m-eJF-k7CBRkZRxzDqIz13TloKGMkml01IR6GYWjtR5wRZQ8Bj7gJQat=w1234-h821-no?authuser=0")
mathieu = User.create!(nickname:"Mat Mat",
 email:"mathieu@gmail.com",
 password: 123456,
 average_rating: 4,
 description: "Je vis pour la course, que ce soit en forêt ou en ville. Petite préference pour le butte Chaumont")
mathieu.avatar.attach(io:file_avatar7, filename:'mathieu.png', content_type:'image/png')

file_avatar8 = URI.open("https://lh3.googleusercontent.com/pw/ACtC-3eAH0ngA1qx3P2vSOMTO1XCStLg8uskEDuLjf9_dCKov17hMk-8l0Cka9KW8p9fuyttmYAUXd9lQryDMy9cK4CTR3-FPLh1m-eJF-k7CBRkZRxzDqIz13TloKGMkml01IR6GYWjtR5wRZQ8Bj7gJQat=w1234-h821-no?authuser=0")
mina = User.create!(nickname:"Mina",
 email:"mina@gmail.com",
 password: 123456,
 average_rating: 4.3,
 description: "Cherche à prendre du plaisir à travers le Vélo, seulement en montagne")
mina.avatar.attach(io:file_avatar8, filename:'mina.png', content_type:'image/png')
#EVENTS

event1 = Event.create!(
  user: mina,
 title:"Partie de Five, Dev vs Data",
 description:"Très sympa et très chaud pour se caler sur le lundi (à chaque fois il n’y a vraiment personne donc on sera qu’entre nous)",
 location:"124 Boulevard Richard-Lenoir, Paris",
 duration: 2,
 start_time: DateTime.new(2020,9,4,16),
 number_of_participants: 9,
 sport:football)

puts "create #{event1.title}"

event2 = Event.create!(
  user: mina,
 title: "Pétanque chez Bouboule",
 description: "Petite pétanque après le travail, et pourquoi pas une bière  ",
 location:"18 boulevard de la Villette, Paris",
 duration: 2,
 start_time: DateTime.new(2020,9,4,16),
 number_of_participants: 3,
 sport:pétanque)
puts "create #{event2.title}"

event3 = Event.create!(
 user: eric,
 title:"Ascension du col de la Croix ",
 description:"Cherche cycliste agueri pour faire la montée de ce col en cette météo sublime",
 location:"9 rue de l'Eglise, Paris",
 duration: 2,
 start_time: DateTime.new(2020,9,4,16),
 number_of_participants: 2,
 sport:cycling)
puts "create #{event3.title}"

event4 = Event.create!(
  user: eric,
 title:"Match de Tennis en 2 set",
 description:"Recherche adversaire niveau 3/6 pour prendre du plaisir avec la raquette",
 location:"57 Boulevard Rouget de Lisle",
 duration: 1,
 start_time: DateTime.new(2020,9,4,16),
 number_of_participants: 1,
 sport:tennis)
puts "create #{event4.title}"

event5 = Event.create!(
  user: stephane,
  title:"Yoga avec les filles",
  description:" Retrouvez aujourd'hui Sothiya à 12h à Gaudelet pour votre cours de Yoga, ce sera le moment de prendre une pause pour vous détendre",
  location: "16 villa Gaudelet, Paris",
  duration: 3,
  start_time: DateTime.new(2020,9,4,16),
  number_of_participants: 6,
  sport:yoga)
puts "create #{event5.title}"

event6 = Event.create!(
 user: eric,
 title:"Course à pied le long des quais",
 description:" Retrouvez moi aujourd'hui à 12h à Gaudelet pour 1h de footing, ça va être cool",
 location: "89 Quai de Valmy",
 duration: 1,
 start_time: DateTime.new(2020,9,4,12),
 number_of_participants: 5,
 sport:running)
puts "create #{event6.title}"

event7 = Event.create!(
 user: eric,
 title:"Match de Foot dans Paris !",
 description:"Salut les gars, on est combien aujourd'hui ? ",
 location: "73 Rue de Turbigo, 75003 Paris",
 duration: 2,
 start_time: DateTime.new(2020,9,4,19),
 number_of_participants: 22,
 sport:football)
puts "create #{event7.title}"

# past events
event8 = Event.create!(
  user: eric,
 title:"Tournoi de tennis sur un rooftop !",
 description:"Super evenement de petanque? ",
 location: "73 Rue de Turbigo, 75003 Paris",
 duration: 2,
 start_time: DateTime.new(2020,8,29,19),
 number_of_participants: 6,
 sport:tennis)
puts "create #{event8.title}"

event9 = Event.create!(
  user: eric,
 title:"Petanque super cool",
 description:"Petanque chez Bouboule ",
 location: "73 Rue de Turbigo, 75003 Paris",
 duration: 2,
 start_time: DateTime.new(2020,8,16,19),
 number_of_participants: 6,
 sport:pétanque)
puts "create #{event9.title}"

event10 = Event.create!(
  user: david,
 title:"Petanque super cool",
 description:"Petanque chez Bouboule ",
 location: "118 Avenue Michelet, Paris",
 duration: 2,
 start_time: DateTime.new(2020,8,13,19),
 number_of_participants: 6,
 sport:pétanque)
puts "create #{event10.title}"

event11 = Event.create!(
  user: david,
 title:"football test",
 description:"football le long de la seine ",
 location: "Quai de la corse, Paris",
 duration: 2,
 start_time: DateTime.new(2020,8,20,19),
 number_of_participants: 6,
 sport:football)
puts "create #{event5.title}"

event12 = Event.create!(
  user: david,
 title:"Football tres chill",
 description:"En petit comité ",
 location: "18 rue ramponeau, Paris",
 duration: 2,
 start_time: DateTime.new(2020,8,21,19),
 number_of_participants: 6,
 sport:football)
puts "create #{event5.title}"




#ATTENDEES

attendee14 = Attendee.create!(user:eric, event:event1, rating:2, review:"De la grosse merde, va chiez connard", creator_review:"Très mauvais joueur",creator_rating:2)
attendee13 = Attendee.create!(user:eric, event:event2, rating:2, review:"Super soirée pétanque ! A refaire", creator_review:"Super doué même après avoir bu 6 bières", creator_rating:5)
attendee12 = Attendee.create!(user:eric, event:event5, rating:2, review:"Super yoga apres le travail", creator_rating:5)

attendee2 = Attendee.create!(user:david, event:event5, rating:5, review:"C'était un super cours de Yoga !", creator_review:"David est super chill pendant les cours de Yoga")
attendee3 = Attendee.create!(user:franck, event:event3, rating:3, review:"Pas mal, même si on s'est perdu quelques heures !", creator_review:"Bon cycliste, mais manque un peu de sens de l'orientation")
attendee4 = Attendee.create!(user:walid, event:event5, rating:4, review:"Physiquement c'était top, j'ai pu codé l'esprit tranquille toute la semaine grâce à ce cours de Yoga" )
attendee6 = Attendee.create!(user:mina, event:event3, rating:2, review:"Evenement complètement nul, on s'est perdu pendant 2 heures...")

attendee5 = Attendee.create!(user:zac, event:event7, rating:4, review:"Au top les mecs !")
attendee7 = Attendee.create!(user:nicolas, event:event7, rating:4, review:"C'était super dommage qu'on ai perdu")
attendee8 = Attendee.create!(user:mathieu, event:event7, rating:5, review:"Genial !")
attendee9 = Attendee.create!(user:walid, event:event7, rating:3, review:"Assez cool")
attendee11 = Attendee.create!(user:franck, event:event7, rating:2, review:"Que des bras cassés dans mon équipe ! C'etait naze")

attendee15 = Attendee.create!(user:zac, event:event1, rating:4, review:"")
attendee16 = Attendee.create!(user:nicolas, event:event1, rating:4, review:"")
attendee17 = Attendee.create!(user:mathieu, event:event1, rating:5, review:"")
attendee18 = Attendee.create!(user:walid, event:event1, rating:3, review:"")
attendee19 = Attendee.create!(user:franck, event:event1, rating:2, review:"")

attendee20 = Attendee.create!(user:walid, event:event8, rating:4, review:"")
attendee21 = Attendee.create!(user:franck, event:event8, rating:5, review:"")
attendee22 = Attendee.create!(user:mathieu, event:event8, rating:5, review:"")
attendee23 = Attendee.create!(user:david, event:event8, rating:5, review:"")

attendee24 = Attendee.create!(user:stephane, event:event9, rating:4, review:"")
attendee25 = Attendee.create!(user:nicolas, event:event9, rating:5, review:"")
attendee26 = Attendee.create!(user:mina, event:event9, rating:5, review:"")
attendee27 = Attendee.create!(user:franck, event:event9, rating:5, review:"")

attendee24 = Attendee.create!(user:eric, event:event10, rating:4, review:"")
attendee25 = Attendee.create!(user:eric, event:event11, rating:5, review:"")
attendee26 = Attendee.create!(user:eric, event:event12, rating:5, review:"")


