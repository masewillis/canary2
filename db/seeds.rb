# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# company = Company.create({
#   cname: "Rosneft",
#   name: "Vladimir Putin",
#   position: "CEO"
#   })

# projects = Project.create({
#   name: "Developmentone",
#   company_id: 1,
#   country_id: 1,
#   minefield_id: 1,
#   description: "infrastructure development"
#   })


countries = Country.create({
  name: "Saudi Arabia",
  total_oil: 11725,
  oil_export: 8448,
  refinery: 2080,
  reserves: 268,
  corruption: 46,
  minerals: "gold, silver, copper, zinc"
  })

countries = Country.create({
  name: "Russia",
  total_oil: 10396,
  oil_export: 7124,
  refinery: 5431,
  reserves: 80,
  corruption: 28,
  minerals: "aluminum, bauxite, diamond, copper, cobalt"
  })

countries = Country.create({
  name: "Iraq",
  total_oil: 2986,
  oil_export: 1908,
  refinery: 638,
  reserves: 141,
  corruption: 16,
  minerals: "phosphate rock, salt, sulfur"
  })

countries = Country.create({
  name: "Brazil",
  total_oil: 2651,
  oil_export: -36,
  refinery: 1908,
  reserves: 13,
  corruption: 42,
  minerals: "gold, copper, tin, iron, bauxite"
  })





minefields = Minefield.create({
  name: "Ghawar Field",
  kind: "oilfield",
  country_id: 2,
  output: 5000000,
  oil_reserves: 71000
  })


minefields = Minefield.create({
  name: "Samotlor Field",
  kind: "oilfield",
  country_id: 3,
  output: 750000,
  oil_reserves: 4
  })

minefields = Minefield.create({
  name: "Rumaila Field",
  kind: "oilfield",
  country_id: 4,
  output: 960000,
  oil_reserves: 17000
  })


minefields = Minefield.create({
  name: "Carajas Mine",
  kind: "mine",
  country_id: 5,
  output: 510,
  oil_reserves: 0
  })
















































