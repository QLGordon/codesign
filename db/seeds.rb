# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Destroy all"
Color.destroy_all
Category.destroy_all
Project.destroy_all
Adress.destroy_all
Client.destroy_all
p "Destruction done"

3.times do
p "Clients"
ifh = Client.create(
  name: "Institut Français en Haïti",
  description: "Basé à Port-au-prince"
  )
hainet = Client.create(
  name: "Hainet",
  description: "Fournisseur d'accès internet"
  )
p "Clients Adresses"
Adress.create(
  street: "16 rue de la vie",
  city: "Port-au-prince",
  state: "Haïti",
  zip: "Unknown",
  client_id: ifh.id
)
Adress.create(
  street: "5 rue draguin",
  city: "Port-au-prince",
  state: "Haïti",
  zip: "Unknown",
  client_id: ifh.id
)
p "Projects"
fff = Project.create(
  title: "Festival du Film Francophone",
  description: "Un festival de film",
  date: DateTime.new(2015,9,1,17),
  client_id: ifh.id,
  photo: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548389022/hainet/a_noel.png"
  )
fifa = Project.create(
  title: "Fifa",
  description: "Internet pour les footeux",
  date: DateTime.new(2015,9,1,17),
  client_id: hainet.id
  )
p "Categories"
Category.create(
  name: "Gif",
  description: "Format d'image animée",
  print: true,
  vector: false,
  motion: true,
  project_id: fff.id
  )
Category.create(
  name: "social media publication",
  description: "on facebook, twitter and instagram",
  print: true,
  vector: false,
  motion: false,
  project_id: fifa.id
  )
p "Colors"
Color.create(
  name: "red",
  red: 255,
  green: 0,
  blue: 0,
  alpha: 1,
  project_id: fff.id
  )
Color.create(
  name: "red",
  red: 255,
  green: 0,
  blue: 0,
  alpha: 1,
  project_id: fifa.id
  )


end
