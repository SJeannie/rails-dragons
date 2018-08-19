# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Dragon.destroy_all
Ability.destroy_all

soj = User.create(name: 'Sojeong', level: 3, clan: 'SNSPS')
jeannie = User.create(name: 'Jeannie', level: 3, clan: 'SNSPS')

Dragon.create(name: 'Toothless', level: 3, mp: 230, hp: 320, user: soj)
Dragon.create(name: 'Charmander', level: 3, mp: 200, hp: 350, user: jeannie)

Ability.create(name: 'Ice Blast', ability_type: 'HP', damage: 80)
Ability.create(name: 'Swoop', ability_type: 'HP', damage: 20)
Ability.create(name: 'Stormcast', ability_type: 'MP', damage: 60)
