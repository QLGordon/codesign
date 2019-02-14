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
brand_identity = Category.create!(name: "Brand Identity")
campaign = Category.create!(name: "Campaign")
photography = Category.create!(name: "photographie")
motion_graphics = Category.create!(name: "Film & Motion graphics")

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
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161107/institut_francais/ifh.svg", client: ifh)

Color.create!(red: 28, green: 138, blue: 201, alpha: 1, client: ifh)
Color.create!(red: 0, green: 40, blue: 206, alpha: 1, client: ifh)
Color.create!(red: 254, green: 237, blue: 1, alpha: 1, client: ifh)
Color.create!(red: 249, green: 37, blue: 64, alpha: 1, client: ifh)
Color.create!(red: 58, green: 237, blue: 183, alpha: 1, client: ifh)

hpp = Client.create!( name: "Haïti Piano Project", description: "", category: culture)

ambafrance = Client.create!( name: "Ambassade de France en Haïti", description: "", category: administration)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549983910/Ambafranceht/ambafrance.svg", client: ambafrance)

Color.create!(red: 24, green: 34, blue: 134, alpha: 1, client: ambafrance)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, client: ambafrance)
Color.create!(red: 251, green: 15, blue: 12, alpha: 1, client: ambafrance)

se = Client.create!( name: "Sibylline escapade", description: "", category: start_up)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160742/Sibylline/sibylline_c.svg", client: se)

hainet = Client.create!( name: "Hainet", description: "", category: entreprise)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160466/hainet/hainet_c.svg", client: hainet)
Color.create!(red: 30, green: 147, blue: 236, alpha: 1, client: hainet)
Color.create!(red: 248, green: 124, blue: 39, alpha: 1, client: hainet)
Color.create!(red: 55, green: 51, blue: 46, alpha: 1, client: hainet)

personal = Client.create!( name: "QL Gordon", description: "", category: perso)

spark = Client.create!( name: "Spark", description: "", category: start_up)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160679/Spark/spark_c.svg", client: spark)
Color.create!(red: 90, green: 225, blue: 183, alpha: 1, client: spark)
Color.create!(red: 9, green: 115, blue: 255, alpha: 1, client: spark)

mpp = Client.create!( name: "Mouvman Payzan Papay", description: "", category: association)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160830/mpp/mpp_c.svg", client: mpp)
Color.create!(red: 251, green: 186, blue: 0, alpha: 1, client: mpp)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, client: mpp)

ds = Client.create!( name: "Diplomatie Solidaire", description: "", category: association)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549985279/dipomatie_solidaire/diplomatie_solidaire_c.svg", client: ds)

Color.create!(red: 250, green: 27, blue: 17, alpha: 1, client: ds)
Color.create!(red: 0, green: 28, blue: 131, alpha: 1, client: ds)
Color.create!(red: 34, green: 31, blue: 28, alpha: 1, client: ds)

ue = Client.create!( name: "Union Européenne", description: "", category: administration)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161049/codesign/ue_c.svg", client: ue)

Color.create!(red: 255, green: 255, blue: 0, alpha: 1, client: ue)
Color.create!(red: 015, green: 33, blue: 139, alpha: 1, client: ue)

concern = Client.create!( name: "Concern Worldwide", description: "", category: association)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161030/codesign/concern_c.svg", client: concern)

Color.create!(red: 31, green: 80, blue: 45, alpha: 1, client: concern)

starcom = Client.create!( name: "Starcom Mediavest Haïti", description: "", category: entreprise)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161010/codesign/starcom_c.svg", client: starcom)

Color.create!(red: 255, green: 140, blue: 0, alpha: 1, client: starcom)
Color.create!(red: 255, green: 44, blue: 0, alpha: 1, client: starcom)
Color.create!(red: 255, green: 214, blue: 0, alpha: 1, client: starcom)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, client: starcom)

ddb = Client.create!( name: "DDB", description: "", category: entreprise)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160990/codesign/ddb_c.svg", client: ddb)

Color.create!(red: 236, green: 195, blue: 7, alpha: 1, client: ddb)
Color.create!(red: 14, green: 12, blue: 21, alpha: 1, client: ddb)

enedis = Client.create!( name: "Enedis", description: "", category: entreprise)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160973/codesign/enedis_c.svg", client: enedis)

Color.create!(red: 0, green: 76, blue: 172, alpha: 1, client: enedis)
Color.create!(red: 148, green: 204, blue: 0, alpha: 1, client: enedis)

pantheon_sorbonne = Client.create!( name: "Université Paris 1 Panthéon Sorbonne", description: "", category: administration)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160954/codesign/pantheon_sorbonne_c.svg", client: pantheon_sorbonne)

Color.create!(red: 190, green: 124, blue: 8, alpha: 1, client: pantheon_sorbonne)
Color.create!(red: 10, green: 39, blue: 86, alpha: 1, client: pantheon_sorbonne)

cath_flon = Client.create!( name: "Catherine Flon", description: "", category: entreprise)

Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549985126/Catherine%20Flon/cath_flon_c.svg", client: cath_flon)

#________P_R_O_J_E_C_T_S________________________________________________________

p "Creating Projects"

hpp = Project.create!(
  title: "2ème Festival international de Piano d'Haïti",
  description: "Pour le deuxième festival international de Piano en Haïti Célimène Daudet a voulu une affiche sobre qui respire la joie.
M’inspirant de la forme même d’un Piano, j’ai proposé cette affiche colorée où trois pianos dansent pour ne former plus qu’une forme au centre.
Le trait tremblant est un clin dœil à l’art naïf Haïtien.",
  category: campaign, client: hpp, city: 'Jacmel', country: 'Haïti', date: Date.new(2018,11),
  photos: [
    'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549981385/Ha%C3%AFti%20Piano%20Project/Hpp_base.png',
    'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350936/Ha%C3%AFti%20Piano%20Project/a_hpp.png'
  ])

Color.create!(red: 24, green: 122, blue: 179, alpha: 1, project: hpp)
Color.create!(red: 26, green: 39, blue: 51, alpha: 1, project: hpp)
Color.create!(red: 253, green: 215, blue: 3, alpha: 1, project: hpp)

Svg.create!( svg: 'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549985200/Ha%C3%AFti%20Piano%20Project/Piano.svg', project: hpp)
Svg.create!( svg: 'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549985200/Ha%C3%AFti%20Piano%20Project/Piano_1.svg', project: hpp)
Svg.create!( svg: 'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549985200/Ha%C3%AFti%20Piano%20Project/Piano_2.svg', project: hpp)


at = Project.create!(
  title: "Alan Turing",
  description: "Test de scripts animés avec les équations d'Alan Turing",
  category: motion_graphics, client: personal, city: 'Paris', country: 'France', date: Date.new(2018,9),
  photos: ["https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548406363/codesign/Piano-Piano.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548406308/codesign/Piano-Organique.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548406285/codesign/Piano2.gif"])

Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: at)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: at)

hainet = Project.create!(
  title: "Hainet",
  description: "Communication interne et externe",
  category: brand_identity, client: hainet, city: 'Port-au-Prince', country: 'Haïti', date: Date.new(2016,7),
  photos: ["https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548351144/hainet/hainet_fibre.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350870/hainet/hainet_mobil.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548391164/hainet/HainetB.png"])

Svg.create!( svg: 'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160466/hainet/hainet.svg', project: hainet)

spark = Project.create!(
  title: "Spark",
  description: "Communication interne et externe",
  category: brand_identity, client: spark, city: 'Paris', country: 'France', date: Date.new(2019,1),
  photos: [])

Svg.create!( svg: 'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160679/Spark/spark.svg', project: spark)

Project.create!(
  title: "Kill your gender",
  description: "Communication pour un évènement organisé dans la ville de Nantes",
  category: campaign, client: personal,  city: 'Nantes', country: 'France', date: Date.new(2015,6),
  photos: ["https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350810/KillYourGender.gif"])

fff = Project.create!(
  title: "festival du film francophone",
  description: "festival du film francophone",
  category: brand_identity, client: ifh, city: 'Port-au-Prince', country: 'Haïti', date: Date.new(2018,3),
  photos: ["https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350729/institut_francais/fff.gif"])

Color.create!(red: 28, green: 138, blue: 201, alpha: 1, project: fff)

mpp_1 = Project.create!(
  title: "Mouvman Peyzan Papay",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  category: brand_identity, client: mpp, city: 'Papay', country: 'Haïti', date: Date.new(2016,5),
  photos: [
    "https://mir-s3-cdn-cf.behance.net/project_modules/disp/0d390938145993.5960f439382eb.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548398804/mpp/MPP.gif"
  ])
Svg.create!( svg: 'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160830/mpp/mpp.svg', project: mpp_1)

ds = Project.create(
  title: "Diplomatie Solidaire",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  category: brand_identity, client: ds,  city: 'Paris', country: 'France', date: Date.new(2016,1),
  photos: [])

Svg.create!( svg: 'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549985279/dipomatie_solidaire/diplomatie_solidaire.svg', project: ds)

ambafrance_tweeter = Project.create(
  title: "Twitter Ambassade",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  category: campaign, client: ambafrance,  city: 'Port-au-Prince', country: 'Haïti', date: Date.new(2015, 12),
  photos: [
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548400741/Ambafranceht/CDFH2.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548407831/Ambafranceht/20mars.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548408415/Ambafranceht/14juillet.gif",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548408619/Ambafranceht/DaHp6N9XcAAvW6W.jpg",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548408674/Ambafranceht/DXxPXOjVwAA5MUT.jpg"
  ])

cath_flon_p = Project.create(
  title: "Catherine Flon",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  category: brand_identity, client: cath_flon,  city: 'Paris', country: 'France', date: Date.new(2018,3),
  photos: [
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549977878/Catherine%20Flon/06436145468885.5848356929194.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549977877/Catherine%20Flon/34a3de45468885.58322ce1e2062.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549977876/Catherine%20Flon/03cb2d45468885.58322ce1e2d89.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549977875/Catherine%20Flon/c84ae645468885.58322ce1e263d.png",
    "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549977875/Catherine%20Flon/f771d045468885.58322ce1e32bb.png"
  ])

skills_design = Project.create!( title: "Skills Design", description: "", category: perso, client: personal)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161589/Skills/Ps.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161588/Skills/Ai.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161588/Skills/Ae.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161588/Skills/Id.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161589/Skills/Pr.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161589/Skills/Lr.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161590/Skills/XD.svg", project: skills_design)

skills_web = Project.create!( title: "Skills Web", description: "", category: perso, client: personal)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/CSS.svg", project: skills_web)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/HTML.svg", project: skills_web)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/Ruby.svg", project: skills_web)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/Rails.svg", project: skills_web)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/Js.svg", project: skills_web)

formation = Project.create!( title: "Formations", description: "", category: perso, client: personal)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161515/formation/Renoir.svg", project: formation)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161515/formation/LISAA.svg", project: formation)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161515/formation/lewagon.svg", project: formation)
