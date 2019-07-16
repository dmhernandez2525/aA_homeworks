# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
  user1 = User.create!(email: 'CJ')
  user2 = User.create!(email: 'Flarnie')
  user3 = User.create!(email: 'Jeff')
  user4 = User.create!(email: 'Georges St. Pierre')
  user5 = User.create!(email: 'Ned')




  ShortendUrl.create!(short_url:   ,user_id: user3.id,  course1.id)
  ShortendUrl.create!(short_url:   ,user_id: user4.id,  course1.id)
  ShortendUrl.create!(short_url:   ,user_id: user1.id,  course2.id)
  ShortendUrl.create!(short_url:   ,user_id: user2.id,  course2.id)