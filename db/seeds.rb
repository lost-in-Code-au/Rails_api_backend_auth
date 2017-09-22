# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Account.destroy_all

user_one = User.create!({email: 'john@gmail.com', password:'password', password_confirmation:'password'})
user_two = User.create!({email: 'jarrod@gmail.com', password:'password', password_confirmation:'password'})

user_one.accounts.create({name:'local', amount:100.00})

user_two.accounts.create({name:'local', amount:0.01});
user_two.accounts.create({name:'Guernsey Marketing', amount:100000.01});
