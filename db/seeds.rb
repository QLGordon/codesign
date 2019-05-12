# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#________C_A_T_E_G_O_R_I_E_S____________________________________________________

"Creating Categories"
# brand_identity = Category.create!(name: "Brand Identity")

#________C_L_I_E_N_T_S__________________________________________________________

p "Add Clients"

lbv = Client.create!( name: "La Belle Vie", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1557619085/LabBelleVie.svg", client: lbv)

mobile_club = Client.create!( name: "Mobile.Club", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1557618904/mobileClub.svg", client: mobile_club)

Color.create!(red: 249, green: 11, blue: 110, alpha: 1, client: mobile_club)
Color.create!(red: 64, green: 38, blue: 231, alpha: 1, client: mobile_club)

iziwork = Client.create!( name: "Iziwork", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1557618257/Iziwork.svg", client: iziwork)

Color.create!(red: 30, green: 140, blue: 90, alpha: 1, client: iziwork)
Color.create!(red: 79, green: 183, blue: 102, alpha: 1, client: iziwork)
Color.create!(red: 3, green: 27, blue: 74, alpha: 1, client: iziwork)
#________P_R_O_J_E_C_T_S________________________________________________________
