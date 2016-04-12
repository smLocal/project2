# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# t.string   "email"
# t.string   "password_digest"
# t.boolean  "is_admin"
# t.datetime "created_at",      null: false
# t.datetime "updated_at",      null: false

# regular user
User.create({
  email: "3@gmail.com",
  password: "123",
  password_confirmation: "123",
  is_admin: false
})

# admin user

User.create({
  email: "2@gmail.com",
  password: "123",
  password_confirmation: "123",
  is_admin: true
})

# t.string   "name"
# t.integer  "quantity"
# t.integer  "case_price"
# t.integer  "unit_price"
# t.integer  "category_id"
# t.string   "type"
Item.create([
  {
    name: "Carrot",
    quantity: 30,
    case_price: 5,
    unit_price: 1,
    category: "veggie"
  }
])

Item.create([
  {
    name: "Orange",
    quantity: 40,
    case_price: 12,
    unit_price: 2,
    category: "fruit"
  }
])
