# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# t = Time.new(2020, 07, 06, 06, 0, 0, "-04:00").to_i

User.destroy_all


User.create({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: "user1", password: "password", confirm_password: "password", profile_img: "http://lorempixel.com/400/200/people/1/"})
User.create({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: "user2", password: "password", confirm_password: "password", profile_img: "http://lorempixel.com/400/200/people/2/"})
User.create({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: "user3", password: "password", confirm_password: "password", profile_img: "http://lorempixel.com/400/200/people/3/"})
User.create({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: "user4", password: "password", confirm_password: "password", profile_img: "http://lorempixel.com/400/200/people/4/"})


Game.create(name: Faker::Game.title)
Game.create(name: Faker::Game.title)
Game.create(name: Faker::Game.title)
Game.create(name: Faker::Game.title)
Game.create(name: Faker::Game.title)


#   t.bigint "user_id", null: false
#     t.bigint "game_id", null: false
#     t.time "sleep_time"
#     t.time "alarm_time"
#     t.time "awake_time"
#     t.time "end_time"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["game_id"], name: "index_mornings_on_game_id"
#     t.index ["user_id"], name: "index_mornings_on_user_id"

# user_id: User.all.sample.id
# game_id: Game.all.sample.id
# 
# Morning.create()
