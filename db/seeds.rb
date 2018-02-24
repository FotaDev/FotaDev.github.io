# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.create(
  name: "Group 1",
  address: "Fake Street 1"
)
Group.create(
    name: "Group 2",
      address: "Calle Falsa 2"
)
Group.create(
    name: "Group 3",
    address: "Bacon Street 22"
)

User.create(
  email:"car@los.com",
  password: "111111",
  group_id: 1
)

