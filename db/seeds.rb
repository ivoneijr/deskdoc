# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = User.create(name: 'Ivonei', username: 'ivoneijr', password: 'ivoneir')
b = User.create(name: 'admin', username: 'admin', password: 'admin')

d1 = Document.create(title: 'word archive 1', body: 'Era uma vez')
d2 = Document.create(title: 'word archive 2', body: 'Era uma vez')
d3 = Document.create(title: 'word archive 3', body: 'Era uma vez')
d4 = Document.create(title: 'word archive 4', body: 'Era uma vez')

UsersDocuments.create(user: a, document: d1)