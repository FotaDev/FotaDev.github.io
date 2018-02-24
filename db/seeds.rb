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
  email: "car@los.com",
  password: "111111",
  group_id: 1
)

Hire.create(
  user_id: 1,
  group_id: 1,
  collect_date: Date.today,
  return_date: Date.today + 9.months,
  status: 1,
  band: 1,
  reference: "Reference text of this Hire",
  invoice_number: 1
)

Hire.create(
  user_id: 1,
  group_id: 1,
  collect_date: Date.tomorrow,
  return_date: Date.today + 9.months,
  status: 4,
  band: 3,
  reference: "Another text of this Hire",
  invoice_number: 15
)
