# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#! only run this file once after a db:reset
# require_relative 'external_API_fetch'

# ...

User.destroy_all
Fandom.destroy_all

evan = User.create(username: 'evan_0120', email: 'dkim2435@gmail.com', password: '123')
evan.teams << [ Team.all[26], Team.all[29], Team.all[4], Team.all[7] ]

# brian = User.create(username: 'rhehddlf', email: 'rhehddlf@gmail.com', password_digest: '00000')
# brian.teams << [ Team.all[26], Team.all[66], Team.all[43], Team.all[44] ]




