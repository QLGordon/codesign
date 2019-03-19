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
Work.destroy_all
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
digital = Category.create!(name: "Digital design")

#________C_L_I_E_N_T_S__________________________________________________________

p "Creating Clients"
ifh = Client.create!( name: "Institut Français en Haïti",
  description: "L'Institut français en Haïti (IFH) fait partie du réseau mondial des instituts français. Son bureau est basé à Port-au-Prince, la capitale du pays.")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161107/institut_francais/ifh.svg", client: ifh)

Color.create!(red: 28, green: 138, blue: 201, alpha: 1, client: ifh)
Color.create!(red: 0, green: 40, blue: 206, alpha: 1, client: ifh)
Color.create!(red: 254, green: 237, blue: 1, alpha: 1, client: ifh)
Color.create!(red: 249, green: 37, blue: 64, alpha: 1, client: ifh)
Color.create!(red: 58, green: 237, blue: 183, alpha: 1, client: ifh)

hpp = Client.create!( name: "Haïti Piano Project", description: "")

ambafrance = Client.create!( name: "Ambassade de France en Haïti", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549983910/Ambafranceht/ambafrance.svg", client: ambafrance)

Color.create!(red: 24, green: 34, blue: 134, alpha: 1, client: ambafrance)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, client: ambafrance)
Color.create!(red: 251, green: 15, blue: 12, alpha: 1, client: ambafrance)

se = Client.create!( name: "Sibylline escapade", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160742/Sibylline/sibylline_c.svg", client: se)

hainet = Client.create!( name: "Hainet", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160466/hainet/hainet_c.svg", client: hainet)
Color.create!(red: 30, green: 147, blue: 236, alpha: 1, client: hainet)
Color.create!(red: 248, green: 124, blue: 39, alpha: 1, client: hainet)
Color.create!(red: 55, green: 51, blue: 46, alpha: 1, client: hainet)

personal = Client.create!( name: "QL Gordon", description: "")

spark = Client.create!( name: "Spark", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160679/Spark/spark_c.svg", client: spark)
Color.create!(red: 90, green: 225, blue: 183, alpha: 1, client: spark)
Color.create!(red: 9, green: 115, blue: 255, alpha: 1, client: spark)

mpp = Client.create!( name: "Mouvman Payzan Papay", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160830/mpp/mpp_c.svg", client: mpp)
Color.create!(red: 251, green: 186, blue: 0, alpha: 1, client: mpp)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, client: mpp)

ds = Client.create!( name: "Diplomatie Solidaire", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549985279/dipomatie_solidaire/diplomatie_solidaire_c.svg", client: ds)

Color.create!(red: 250, green: 27, blue: 17, alpha: 1, client: ds)
Color.create!(red: 0, green: 28, blue: 131, alpha: 1, client: ds)
Color.create!(red: 34, green: 31, blue: 28, alpha: 1, client: ds)

ue = Client.create!( name: "Union Européenne", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161049/codesign/ue_c.svg", client: ue)

Color.create!(red: 255, green: 255, blue: 0, alpha: 1, client: ue)
Color.create!(red: 015, green: 33, blue: 139, alpha: 1, client: ue)

concern = Client.create!( name: "Concern Worldwide", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161030/codesign/concern_c.svg", client: concern)

Color.create!(red: 31, green: 80, blue: 45, alpha: 1, client: concern)

starcom = Client.create!( name: "Starcom Mediavest Haïti", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161010/codesign/starcom_c.svg", client: starcom)

Color.create!(red: 255, green: 140, blue: 0, alpha: 1, client: starcom)
Color.create!(red: 255, green: 44, blue: 0, alpha: 1, client: starcom)
Color.create!(red: 255, green: 214, blue: 0, alpha: 1, client: starcom)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, client: starcom)

ddb = Client.create!( name: "DDB", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160990/codesign/ddb_c.svg", client: ddb)

Color.create!(red: 236, green: 195, blue: 7, alpha: 1, client: ddb)
Color.create!(red: 14, green: 12, blue: 21, alpha: 1, client: ddb)

enedis = Client.create!( name: "Enedis", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160973/codesign/enedis_c.svg", client: enedis)

Color.create!(red: 0, green: 76, blue: 172, alpha: 1, client: enedis)
Color.create!(red: 148, green: 204, blue: 0, alpha: 1, client: enedis)

pantheon_sorbonne = Client.create!( name: "Université Paris 1 Panthéon Sorbonne", description: "")
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160954/codesign/pantheon_sorbonne_c.svg", client: pantheon_sorbonne)

Color.create!(red: 190, green: 124, blue: 8, alpha: 1, client: pantheon_sorbonne)
Color.create!(red: 10, green: 39, blue: 86, alpha: 1, client: pantheon_sorbonne)

cath_flon = Client.create!( name: "Catherine Flon", description: "")

Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549985126/Catherine%20Flon/cath_flon_c.svg", client: cath_flon)

#________P_R_O_J_E_C_T_S________________________________________________________

p "Creating Projects"

hpp = Project.create!(
  title: "Haïti Piano Project",
  description: "Haïti Piano project est un festival de musique classique à l'initiative de Célimène Daudet Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem quod ipsa aperiam velit cumque ab autem ipsam, adipisci ipsum? Tempora iusto ducimus ipsa quae, numquam in nihil doloremque similique ea. ipsum dolor sit amet, consectetur adipisicing elit. Optio assumenda nostrum, molestiae esse quas quam molestias placeat nesciunt expedita, aliquam debitis odio iusto inventore perspiciatis rem, fugit, id deleniti obcaecati!",
  client: hpp, country: 'Haïti', date: Date.new(2018,11)
  )
hpp.remote_photo_url = "https://res.cloudinary.com/dhp5qp6ol/image/upload/c_crop,h_600,w_600/v1549981385/Ha%C3%AFti%20Piano%20Project/Hpp_base.png"
hpp.save
Work.create!(
  title: "1er Festival international de Piano d'Haïti",
  description: "Pour le premier festival international de Piano en Haïti Célimène Daudet a voulu une affiche sobre qui respire la joie.
M’inspirant de la forme même d’un Piano, j’ai proposé cette affiche colorée où trois pianos dansent pour ne former plus qu’une forme au centre.
Le trait tremblant est un clin dœil à l’art naïf Haïtien.",
  category: campaign,
  project: hpp,
  city: "Jacmel",
  date: Date.new(2017)
  )
Work.create!(
  title: "2ème Festival international de Piano d'Haïti",
  description: "Pour le deuxième festival international de Piano en Haïti Célimène Daudet a voulu une affiche sobre qui respire la joie.
M’inspirant de la forme même d’un Piano, j’ai proposé cette affiche colorée où trois pianos dansent pour ne former plus qu’une forme au centre.
Le trait tremblant est un clin dœil à l’art naïf Haïtien.",
  category: campaign,
  project: hpp,
  city: "Jacmel",
  date: Date.new(2018)
  )
Work.create!(
  title: "Site internet",
  description: "Suite aux deux collaboration avec le Haïti Paino Project, j'assume la refonte du site internet. Le travail est en cours de réalisation.",
  category: digital,
  project: hpp,
  city: "Paris",
  date: Date.new(2019)
  )

Color.create!(red: 24, green: 122, blue: 179, alpha: 1, project: hpp)
Color.create!(red: 26, green: 39, blue: 51, alpha: 1, project: hpp)
Color.create!(red: 253, green: 215, blue: 3, alpha: 1, project: hpp)
Color.create!(red: 26, green: 39, blue: 51, alpha: 1, project: hpp)
Color.create!(red: 253, green: 215, blue: 3, alpha: 1, project: hpp)


at = Project.create!(
  title: "Alan Turing",
  description: "Test de scripts animés avec les équations d'Alan Turing",
  client: personal, city: 'Paris', country: 'France', date: Date.new(2018,9))
at.remote_photo_url = "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1551788346/codesign/Turing.gif"
at.save

Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: at)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: at)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: at)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: at)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: at)

Work.create!(
  title: "Motif de Turing",
  description: "Lors d'une recherche personelle je me suis amusé avec Photoshop dans ce travail qui anime en 25 i/s le motif d'Allan Turing",
  category: motion_graphics,
  project: at,
  city: "Paris",
  date: Date.new(2018,11)
  )

hainet = Project.create!(
  title: "Hainet",
  description: "Communication interne et externe",
  client: hainet, city: 'Port-au-Prince', country: 'Haïti', date: Date.new(2016,7))
hainet.remote_photo_url = "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548409366/hainet/HainetSA.png"
hainet.save
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: hainet)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: hainet)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: hainet)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: hainet)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: hainet)

Work.create!(
  title: "Refonte du logo",
  description: "Refonte du Logo de la marque Hainet Sesanet",
  category: brand_identity,
  project: hainet,
  city: "Port-au-Prince",
  date: Date.new(2016)
  )
Work.create!(
  title: "Hainet Business",
  description: "Création d'un univers graphique pour la partie business de l'entreprise",
  category: brand_identity,
  project: hainet,
  city: "Port-au-Prince",
  date: Date.new(2017)
  )
Work.create!(
  title: "Hainet Mobile",
  description: "Création d'un univers graphique pour la partie téléphonie de l'entreprise",
  category: brand_identity,
  project: hainet,
  city: "Port-au-Prince",
  date: Date.new(2017)
  )
Work.create!(
  title: "Hainet Fibermax",
  description: "Création d'un univers graphique pour la partie téléphonie de l'entreprise",
  category: campaign,
  project: hainet,
  city: "Port-au-Prince",
  date: Date.new(2017)
  )

spark = Project.create!(
  title: "Spark",
  description: "Communication interne et externe",
  client: spark, city: 'Paris', country: 'France', date: Date.new(2019,1))
spark.remote_photo_url = "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1551790449/Spark/spark_mock.png"
spark.save

Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: spark)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: spark)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: spark)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: spark)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: spark)

Work.create!(
  title: "Logographie",
  description: "Création d'un univers graphique pour la partie téléphonie de l'entreprise",
  category: brand_identity,
  project: spark,
  city: "Paris",
  date: Date.new(2019)
  )

kyg = Project.create!(
  title: "Kill your gender",
  description: "Communication pour un évènement organisé dans la ville de Nantes",
  client: personal,  city: 'Nantes', country: 'France', date: Date.new(2015,6))
kyg.remote_photo_url = "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548350810/KillYourGender.gif"
kyg.save

Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: kyg)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: kyg)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: kyg)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: kyg)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: kyg)


ifh_p = Project.create!(
  title: "Institut Français",
  description: "Durant 2 ans j'ai travaillé avec l'Institut Français en Haïti. J'y ai réalisé plus de 150 affiches. Les collaborations ont été nombreuses et très diverses. De la signalétique en passant par de l'évènementiel.",
  client: ifh, city: 'Port-au-Prince', country: 'Haïti', date: Date.new(2018,3))
ifh_p.remote_photo_url = "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1551800540/institut_francais/IFH_logos.gif"
ifh_p.save

Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: ifh_p)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: ifh_p)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: ifh_p)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: ifh_p)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: ifh_p)

Work.create!(
  title: "Jedi mizik",
  description: "Création d'un univers graphique autour des concerts offerts par l'Institut Français à Port-au-Prince. Création d'affiches déclinables.",
  category: campaign,
  project: ifh_p,
  city: "Port-au-Prince",
  date: Date.new(2019)
  )
Work.create!(
  title: "Ciné lari a",
  description: "Création d'un univers graphique autour des séancesde cinéma en plein air offerts par l'Institut Français à Port-au-Prince. Création d'affiches déclinables.",
  category: campaign,
  project: ifh_p,
  city: "Port-au-Prince",
  date: Date.new(2019)
  )
# Color.create!(red: 28, green: 138, blue: 201, alpha: 1, project: fff)

mpp_1 = Project.create!(
  title: "Mouvman Peyzan Papay",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  client: mpp, city: 'Papay', country: 'Haïti', date: Date.new(2016,5),
  )
mpp_1.remote_photo_url = "https://mir-s3-cdn-cf.behance.net/project_modules/disp/0d390938145993.5960f439382eb.gif"
mpp_1.save
Svg.create!( svg: 'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550160830/mpp/mpp.svg', project: mpp_1)

ds = Project.create(
  title: "Diplomatie Solidaire",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  client: ds,  city: 'Paris', country: 'France', date: Date.new(2016,1),
  )

Svg.create!( svg: 'https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549985279/dipomatie_solidaire/diplomatie_solidaire.svg', project: ds)

ambafrance_tweeter = Project.create(
  title: "Twitter Ambassade",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  client: ambafrance,  city: 'Port-au-Prince', country: 'Haïti', date: Date.new(2015, 12),
  )
ambafrance_tweeter.remote_photo_url = "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1548408415/Ambafranceht/14juillet.gif"
ambafrance_tweeter.save

cath_flon_p = Project.create(
  title: "Catherine Flon",
  description: "création d'un logo pour le mouvement paysan Haïtien",
  client: cath_flon,  city: 'Paris', country: 'France', date: Date.new(2018,3),
  )
cath_flon_p.remote_photo_url = "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1549977878/Catherine%20Flon/06436145468885.5848356929194.png"
cath_flon_p.save

Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: cath_flon_p)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: cath_flon_p)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: cath_flon_p)
Color.create!(red: 255, green: 255, blue: 255, alpha: 1, project: cath_flon_p)
Color.create!(red: 0, green: 0, blue: 0, alpha: 1, project: cath_flon_p)

skills_design = Project.create!( title: "Skills Design", description: "", client: personal)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161589/Skills/Ps.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161588/Skills/Ai.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161588/Skills/Ae.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161588/Skills/Id.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161589/Skills/Pr.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161589/Skills/Lr.svg", project: skills_design)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161590/Skills/XD.svg", project: skills_design)

skills_web = Project.create!( title: "Skills Web", description: "", client: personal)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/CSS.svg", project: skills_web)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/HTML.svg", project: skills_web)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/Ruby.svg", project: skills_web)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/Rails.svg", project: skills_web)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161595/Skills/Js.svg", project: skills_web)

formation = Project.create!( title: "Formations", description: "", client: personal)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161515/formation/Renoir.svg", project: formation)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161515/formation/LISAA.svg", project: formation)
Svg.create!( svg: "https://res.cloudinary.com/dhp5qp6ol/image/upload/v1550161515/formation/lewagon.svg", project: formation)
