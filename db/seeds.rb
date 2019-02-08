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
Client.destroy_all
Category.destroy_all
p "Destruction done"

#________C_A_T_E_G_O_R_I_E_S____________________________________________________

p "Creating Categories"
graphisme = Category.create!(name: "graphisme")
motion = Category.create!(name: "motion")
marque = Category.create!(name: "marque")
photography = Category.create!(name: "photographie")
code = Category.create!(name: "code")

culture = Category.create!(name: "culture")
entreprise = Category.create!(name: "entreprise")
administration = Category.create!(name: "administration")
fake = Category.create!(name: "plus")
perso = Category.create!(name: "plus")
association = Category.create!(name: "association")
start_up = Category.create!(name: "Start-Up")

#________C_L_I_E_N_T_S__________________________________________________________

p "Creating Clients"
ifh = Client.create!( name: "Institut Français en Haïti",
  description: "L'Institut français en Haïti (IFH) fait partie du réseau mondial des instituts français. Son bureau est basé à Port-au-Prince, la capitale du pays.", category: culture)
Svg.create!( svg: "IFH/ifh", client: ifh)

Color.create!(red: 28, green: 138, blue: 201, alpha: 1, client: ifh)
Color.create!(red: 0, green: 40, blue: 206, alpha: 1, client: ifh)
Color.create!(red: 254, green: 237, blue: 1, alpha: 1, client: ifh)
Color.create!(red: 249, green: 37, blue: 64, alpha: 1, client: ifh)
Color.create!(red: 58, green: 237, blue: 183, alpha: 1, client: ifh)

hpp = Client.create!( name: "Haïti Piano Project", description: "", category: culture)

ambafrance = Client.create!( name: "Ambassade de France en Haïti", description: "", category: administration)
Svg.create!( svg: "ambafrance/ambafrance", client: ambafrance)

Color.create!(red: 24, green: 34, blue: 134, alpha: 1, client: ambafrance)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, client: ambafrance)
Color.create!(red: 251, green: 15, blue: 12, alpha: 1, client: ambafrance)

se = Client.create!( name: "Sibylline escapade", description: "", category: start_up)
Svg.create!( svg: "sibylline/sibylline_c", client: se)

hainet = Client.create!( name: "Hainet", description: "", category: entreprise)
Svg.create!( svg: "hainet/hainet_c", client: hainet)
Color.create!(red: 30, green: 147, blue: 236, alpha: 1, client: hainet)
Color.create!(red: 248, green: 124, blue: 39, alpha: 1, client: hainet)
Color.create!(red: 55, green: 51, blue: 46, alpha: 1, client: hainet)

personal = Client.create!( name: "Personal Project", description: "", category: perso)

spark = Client.create!( name: "Spark", description: "", category: start_up)
Svg.create!( svg: "spark/spark_c", client: spark)
Color.create!(red: 90, green: 225, blue: 183, alpha: 1, client: spark)
Color.create!(red: 9, green: 115, blue: 255, alpha: 1, client: spark)

mpp = Client.create!( name: "Mouvman Payzan Papay", description: "", category: association)
Svg.create!( svg: "mpp/mpp_c", client: mpp)
Color.create!(red: 251, green: 186, blue: 0, alpha: 1, client: mpp)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, client: mpp)

ds = Client.create!( name: "Diplomatie Solidaire", description: "", category: association)
Svg.create!( svg: "diplomatie_solidaire/diplomatie_solidaire_c", client: ds)

Color.create!(red: 250, green: 27, blue: 17, alpha: 1, client: ds)
Color.create!(red: 0, green: 28, blue: 131, alpha: 1, client: ds)
Color.create!(red: 34, green: 31, blue: 28, alpha: 1, client: ds)

#________P_R_O_J_E_C_T_S________________________________________________________

p "Creating Projects"

hpp = Project.create!(
  title: "2ème Festival international de Piano d'Haïti",
  description: "Pour le deuxième festival international de Piano en Haïti Célimène Daudet a voulu une affiche sobre qui respire la joie.
M’inspirant de la forme même d’un Piano, j’ai proposé cette affiche colorée où trois pianos dansent pour ne former plus qu’une forme au centre.
Le trait tremblant est un clin dœil à l’art naïf Haïtien.",
  category: graphisme, client: hpp,
  photos: ['https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350936/Ha%C3%AFti%20Piano%20Project/a_hpp.png'])

Color.create!(red: 24, green: 122, blue: 179, alpha: 1, project: hpp)
Color.create!(red: 26, green: 39, blue: 51, alpha: 1, project: hpp)
Color.create!(red: 253, green: 215, blue: 3, alpha: 1, project: hpp)

Svg.create!( svg: 'hpp/piano', project: hpp)
Svg.create!( svg: 'hpp/piano_1', project: hpp)
Svg.create!( svg: 'hpp/piano_2', project: hpp)


at = Project.create!(
  title: "Alan Turing",
  description: "Test de scripts animés avec les équations d'Alan Turing",
  category: code, client: personal,
  photos: ["https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548406363/codesign/Piano-Piano.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548406308/codesign/Piano-Organique.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548406285/codesign/Piano2.gif"])

Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: at)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: at)

hainet_logo = Project.create!(
  title: "Hainet marque",
  description: "Communication interne et externe",
  category: marque, client: hainet,
  photos: [])

Svg.create!( svg: 'hainet/hainet', project: hainet_logo)

hainet_sm = Project.create!(
  title: "Hainet graphisme",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin leo diam, tristique non consequat ut, mattis id ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean mi odio, viverra a placerat nec, tincidunt quis libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin congue accumsan sapien id aliquet. Aliquam sagittis, lectus nec faucibus finibus, purus nunc malesuada libero, eu tempor leo elit a augue. Quisque sed urna tempor lacus finibus cursus. Aliquam felis ex, euismod non nulla vel, scelerisque imperdiet elit. Etiam a massa eros. Etiam rutrum laoreet felis, ut vulputate arcu. Quisque commodo finibus elit. Nullam venenatis blandit erat. In dolor odio, hendrerit sit amet commodo id, venenatis vel lorem.

Nulla facilisi. In pharetra pharetra dignissim. In malesuada quam id pellentesque sollicitudin. Morbi at hendrerit metus. Maecenas consequat orci in tincidunt eleifend. Praesent semper pellentesque congue. Quisque euismod enim sed metus pharetra vestibulum. Cras a ultrices mi. In metus tellus, congue eget faucibus quis, vulputate et magna.

Praesent et turpis interdum, sodales justo sit amet, lobortis sapien. Sed eget libero ac lacus ornare rutrum vel sed lectus. Phasellus blandit metus non lorem accumsan, non hendrerit urna rhoncus. Morbi sodales sit amet elit rutrum egestas. Sed convallis nulla nec nibh convallis finibus. Mauris blandit, sapien quis lobortis eleifend, felis nibh pellentesque ligula, et rhoncus lorem erat id ipsum. Donec placerat orci tempus, vestibulum dolor ac, commodo erat. Vestibulum ut elit in nunc ornare fermentum non vitae metus.

Aenean et lacus rhoncus, sodales tortor vestibulum, iaculis lectus. Donec in neque a neque bibendum interdum. Quisque maximus diam felis. Curabitur cursus egestas malesuada. Integer egestas enim et cursus lacinia. Pellentesque volutpat.",
  category: graphisme, client: hainet,
  photos: [
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548351144/hainet/hainet_fibre.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350870/hainet/hainet_mobil.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548391164/hainet/HainetB.png"
  ])
spark = Project.create!(
  title: "Spark",
  description: "Communication interne et externe",
  category: marque, client: spark,
  photos: [])

Svg.create!( svg: 'spark/spark', project: spark)

Project.create!(
  title: "Kill your gender",
  description: "Communication pour un évènement organisé dans la ville de Nantes",
  category: motion, client: personal,
  photos: ["https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350810/KillYourGender.gif"])

fff = Project.create!(
  title: "Institut Français",
  description: "festival du film francophone",
  category: graphisme, client: ifh,
  photos: ["https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548352754/institut_francais/noel_ifhpap.jpg"])

Color.create!(red: 28, green: 138, blue: 201, alpha: 1, project: fff)

mpp_1 = Project.create!(
  title: "Mouvman Peyzan Papay",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  category: marque, client: mpp,
  photos: [])
Svg.create!( svg: 'mpp/mpp', project: mpp_1)

mpp_gif = Project.create!(
  title: "Mouvman Peyzan Papay gif",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  category: motion, client: mpp,
  photos: ["https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548398804/mpp/MPP.gif"])

ds = Project.create(
  title: "Diplomatie Solidaire",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  category: marque, client: ds,
  photos: [])

Svg.create!( svg: 'diplomatie_solidaire/diplomatie_solidaire', project: ds)

ambafrance_tweeter = Project.create(
  title: "Twitter Ambassade",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  category: graphisme, client: ambafrance,
  photos: [
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548400741/Ambafranceht/CDFH2.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548407831/Ambafranceht/20mars.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548408415/Ambafranceht/14juillet.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548408619/Ambafranceht/DaHp6N9XcAAvW6W.jpg",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548408674/Ambafranceht/DXxPXOjVwAA5MUT.jpg"
  ])

