# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create! first_name: 'admin', last_name: 'admin', email: 'heathercarmitchel@gmail.com', password: '14ml33715h', password_confirmation: '14ml33715h', admin: true
Subject.create!([{ name: 'Math' }, { name: 'Science' }, { name: 'English' }])
