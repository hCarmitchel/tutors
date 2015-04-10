# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create! first_name: 'admin', last_name: 'admin', email: 'cbohn40@phm.k12.in.us', password: 'camdenbohn10', password_confirmation: 'camdenbohn10', admin: true
Subject.create!([{ name: 'Math' }, { name: 'Science' }, { name: 'English' }])
