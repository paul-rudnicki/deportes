# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	user = User.create(
		fullname: 'Pawel Biodrowicz',
		email: 'dziobek222@op.pl',
		role: 'admin',
		password: 'dziobek'
	)

# 10.times do
	
# 	user = User.create(
# 		fullname: Faker::Name.name,
# 		email: Faker::Internet.email,
# 		role: ['author', 'guest'].sample,
# 		password: 'admin'
# 	)	

# 	page = Page.create(
# 		title: Faker::Lorem.sentence,
# 		content: Faker::Lorem.paragraph(2),
# 		user: user
# 	)
# end
