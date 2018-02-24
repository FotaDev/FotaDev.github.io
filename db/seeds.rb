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
  username: "Admin 1",
  email: "car@los.com",
  password: "111111",
  group_id: 1
)
User.create(
  username: "Admin 2",
  email: "user2@test.com",
  password: "111111",
  group_id: 2
)



# Past Hire

Hire.create(
  user_id: 1,
  group_id: 1,
  collect_date: Date.yesterday - 2.month,
  return_date: Date.today - 1.months,
  status: 2,
  band: 3,
  reference: "Another text of this Hire",
  invoice_number: 15
)

Hire.create(
  user_id: 1,
  group_id: 1,
  collect_date: 2.days.ago - 1.month,
  return_date: 1.week.ago - 1.months,
  status: 2,
  band: 3,
  reference: "Another text of this Hire",
  invoice_number: 15
)
# Present

Hire.create(
  user_id: 2,
  group_id: 2,
  collect_date: Date.today - 1.day,
  return_date: Date.today + 1.week,
  status: 1,
  band: 1,
  reference: "Lorem Ipsum dolor sit amet",
  invoice_number: 191212
)

Hire.create(
  user_id: 2,
  group_id: 2,
  collect_date: Date.today - 1.day,
  return_date: Date.today + 1.week,
  status: 0,
  band: 1,
  reference: "This one has not been collected yet",
  invoice_number: 191212
)
# Future

Hire.create(
  user_id: 1,
  group_id: 1,
  collect_date: Date.tomorrow + 1.week,
  return_date: Date.tomorrow + 2.weeks,
  status: 3,
  band: 6,
  reference: "More text that I have to write",
  invoice_number: 15

)
Hire.create(
  user_id: 1,
  group_id: 1,
  collect_date: 2.days + 1.week,
  return_date: Date.tomorrow + 1.weeks,
  status: 3,
  band: 6,
  reference: "More text that I have to write",
  invoice_number: 15
)
