# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

wg1 = Wg.create(
	:name => "WG Lichtenberg"
)

wg2 = Wg.create(
	:name => "WG Kreuzberg"
)

wg3 = Wg.create(
	:name => "WG Marzahn"
)

user1 = User.create(
	:username => "Tim",
    :email => "Tim@user.de",
    :password => "123456",
    :password_confirmation => "123456",
	:wg_id => wg1.id
)

user2 = User.create(
	:username => "Andreas",
    :email => "Andreas@user.de",
    :password => "123456",
    :password_confirmation => "123456",
	:wg_id => wg1.id
)

user3 = User.create(
	:username => "Frank",
    :email => "Frank@user.de",
    :password => "123456",
    :password_confirmation => "123456",
	:wg_id => wg1.id
)

user4 = User.create(
	:username => "Niko",
    :email => "Niko@user.de",
    :password => "123456",
    :password_confirmation => "123456",
	:wg_id => wg2.id
)

user5 = User.create(
	:username => "Oliver",
    :email => "Oliver@user.de",
    :password => "123456",
    :password_confirmation => "123456",
	:wg_id => wg2.id
)

user6 = User.create(
	:username => "Michael",
    :email => "Michael@user.de",
    :password => "123456",
    :password_confirmation => "123456"
)

task1 = Task.create(
	:name => "Clean living room",
	:wg_id => wg1.id,
	:user_id => user1.id
)

task2 = Task.create(
	:name => "Take out trash",
	:wg_id => wg1.id,
	:user_id => user3.id
)

task3 = Task.create(
	:name => "Water plants",
	:wg_id => wg1.id,
	:user_id => user3.id
)

item1 = Item.create(
	:name => "Eggs",
	:amount => 6,
	:wg_id => wg1.id
)

item2 = Item.create(
	:name => "Beer",
	:amount => 24,
	:wg_id => wg1.id
)

item3 = Item.create(
	:name => "Coffee",
	:amount => 2,
	:wg_id => wg1.id
)

item4 = Item.create(
	:name => "Milk",
	:amount => 2,
	:wg_id => wg1.id
)

item5 = Item.create(
	:name => "Apples",
	:amount => 4,
	:wg_id => wg1.id
)