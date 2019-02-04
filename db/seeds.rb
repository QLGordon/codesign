# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Destroy all"
Color.destroy_all
Font.destroy_all
Svg.destroy_all
Project.destroy_all
Category.destroy_all
Client.destroy_all
p "Destruction done"

#________C_A_T_E_G_O_R_I_E_S____________________________________________________

p "Creating Categories"
printed = Category.create!(
  name: "print"
)
motion = Category.create!(
  name: "motion"
)
sm = Category.create!(
  name: "social media"
)
logo = Category.create!(
  name: "logo"
)

#________P_R_O_J_E_C_T_S________________________________________________________

hpp = Project.create!(
  title: "Haïti Piano Project",
  description: "Création d'une affiche pour Célimène Daudet",
  photos: [
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350936/codesign/a_hpp.png"
    ],
    category: printed
)
Color.create!(red: 24, green: 122, blue: 179, alpha: 1, project: hpp)
Color.create!(red: 26, green: 39, blue: 51, alpha: 1, project: hpp)
Color.create!(red: 253, green: 215, blue: 3, alpha: 1, project: hpp)


at = Project.create!(
  title: "Alan Turing",
  description: "Test de scripts animés avec les équations d'Alan Turing",
  photos: [
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548406363/codesign/Piano-Piano.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548406308/codesign/Piano-Organique.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548406285/codesign/Piano2.gif"
  ],
  category: motion
)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: at)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: at)

hainet = Project.create!(
  title: "Hainet",
  description: "Communication interne et externe",
  photos: [
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548351144/hainet/hainet_fibre.png"
  ],
  category: sm
)
Color.create!(red: 30, green: 147, blue: 236, alpha: 1, project: hainet)
Color.create!(red: 248, green: 124, blue: 39, alpha: 1, project: hainet)
Color.create!(red: 55, green: 51, blue: 46, alpha: 1, project: hainet)

Project.create!(
  title: "Kill your gender",
  description: "Communication pour un évènement organisé dans la ville de Nantes",
  photos: [
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350810/KillYourGender.gif"
  ],
  category: motion
)

fff = Project.create!(
  title: "Institut Français",
  description: "festival du film francophone",
  photos: [
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548352754/institut_francais/noel_ifhpap.jpg"
  ],
  category: sm
)
Color.create!(red: 28, green: 138, blue: 201, alpha: 1, project: fff)
Color.create!(red: 0, green: 40, blue: 206, alpha: 1, project: fff)
Color.create!(red: 254, green: 237, blue: 1, alpha: 1, project: fff)
Color.create!(red: 249, green: 37, blue: 64, alpha: 1, project: fff)
Color.create!(red: 58, green: 237, blue: 183, alpha: 1, project: fff)

mpp = Project.create!(
  title: "Mouvman Peyzan Papay",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  photos: [
  ],
  category: logo
)
Color.create!(red: 251, green: 186, blue: 0, alpha: 1, project: mpp)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: mpp)
Svg.create!( svg: "mpp/mpp_c", project: mpp)
Svg.create!( svg: 'mpp/mpp', project: mpp)

ds = Project.create(
  title: "Diplomatie Solidaire",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  photos: [
  ],
  category: logo
)
Color.create!(red: 250, green: 27, blue: 17, alpha: 1, project: ds)
Color.create!(red: 0, green: 28, blue: 131, alpha: 1, project: ds)
Color.create!(red: 34, green: 31, blue: 28, alpha: 1, project: ds)
Svg.create!( svg: "diplomatie_solidaire/diplomatie_solidaire_c", project: ds)
Svg.create!( svg: 'diplomatie_solidaire/diplomatie_solidaire', project: ds)
#________C_O_L_O_R_S____________________________________________________________

