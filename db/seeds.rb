# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

# Product.create(name:'Shrimp Boat Captain'description:'its really hard to understand what his guy says.' price:	2.22 cat_id: 1 status: 1 image:	'/uploads/product/image/5/shrimp-boat.jpg')
Category.create(name:'amusing').save
Category.create(name:'annoying').save
