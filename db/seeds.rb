# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Offer.destroy_all
User.destroy_all
Booking.destroy_all
users = [
  { email: 'eimsee_eesmie@live.fr', password: '123456' },
  { email: 'jean@test.com', password: '123456' },
  { email: 'javert@live.fr', password: '123456' },
  { email: 'cosette@live.fr', password: '123456' },
  { email: 'marius@gmail.com', password: '123456' },
  { email: 'enjolras@gmail.com', password: '123456' },
  { email: 'fantine@gmail.com', password: '123456' },
]

users.each do |user|
  User.create!(user)
end

puts "Creating offers..."

  Offer.create(photo:"https://a0.muscache.com/im/pictures/1bc23dbf-13bb-4efa-8168-86645e1a5043.jpg?im_w=1200", name: "appartement", price: 200, description: "Loft moderne, parking intérieur gratuit", address: "140 Rue Regnault, Paris, France")
  Offer.create(photo:"https://a0.muscache.com/im/pictures/miso/Hosting-658996128221919379/original/83038365-ac78-45d1-90e4-fb307c3930b5.jpeg?im_w=1200", name: "appartement", price: 150, description: "Appartement tout confort avec vue panoramique.", address: "14 Route du Javelot, Paris, France ")
  Offer.create(photo:"https://a0.muscache.com/im/pictures/ca4f31bc-87cc-4525-98ad-78984c1ea917.jpg?im_w=1200", name: "appartement", price: 120, description: "1 chambre 1 lit 1 salle de bain", address: "4 Rue Baudricourt, Paris, France")
  Offer.create(photo:"https://a0.muscache.com/im/pictures/miso/Hosting-733242901391354247/original/ebb7c50a-c1b3-40ff-9149-457e8f7a77b1.jpeg?im_w=1200", name: "appartement", price: 100, description: "PARIS 20 : Coquet 2 pièces", address: "8 Rue Clisson, Paris, France")
  Offer.create(photo:"https://a0.muscache.com/im/pictures/c6bd5a9a-5e31-4850-b42c-2816a04adb1b.jpg?im_w=1200", name: "studio", price: 80, description: "Quiet studio near Montmartre + balcony", address: "16 Rue Ricaut, Paris, France")
  Offer.create(photo:"https://a0.muscache.com/im/pictures/46ae39e0-2773-43d1-bb2b-fa9fb939ab28.jpg?im_w=1200", name: "studio", price: 90, description: "Studio parisien comme à l’hôtel ", address: "148 Rue de la Reine Blanche, Paris, France")
  Offer.create(photo:"https://a0.muscache.com/im/pictures/b5669d7d-96da-45c4-871d-7325f6aa3bac.jpg?im_w=1200", name: "chambre", price: 100, description: "Paris “chambre de bonne”", address: "38 Rue Henri Barbusse, Paris, France")
  Offer.create(photo:"https://a0.muscache.com/im/pictures/c621e3c4-fb8b-489f-a1b9-42111fa4ffaa.jpg?im_w=1200", name: "studio", price: 80, description: "Studio confort/moderne proche Paris et transports", address: "22 Rue Danton, Paris, France")
  Offer.create(photo:"https://a0.muscache.com/im/pictures/f5b6b94e-d6fd-4212-b672-75fc9f9c6490.jpg?im_w=1200", name: "studio", price: 60, description: "Studio Design - quartier jeune et populaire", address: "16 Rue François Bonvin, Paris, France")


puts "Created"
puts "Finished!"
