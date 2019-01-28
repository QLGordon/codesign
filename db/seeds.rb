# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Destroy all"
Color.destroy_all
Project.destroy_all

p "Destruction done"
p "Creating Projects"

affiche = Category.create(
  name: "affiche",
  description: "CMYN printed drawing",
  print: true,
  motion: false,
  vector: false
  )
motion = Category.create(
  name: "motion",
  description: "Motion design",
  print: false,
  motion: true,
  vector: false
  )
hainet = Project.create(
  title: "Hainet",
  description: "Communication interne et externe",
  category_id: affiche.id
  )
ifh = Project.create(
  title: "Institut Français",
  description: "festival du film francophone",
  category_id: motion.id
  )
Color.create(
  red: 255,
  green: 0,
  blue: 0,
  alpha: 1,
  project_id: hainet.id
  )
Color.create(
  red: 0,
  green: 255,
  blue: 0,
  alpha: 1,
  project_id: hainet.id
  )
