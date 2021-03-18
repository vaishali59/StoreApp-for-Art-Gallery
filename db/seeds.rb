# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(name:'Product1',
	description: %{Bring home this premium and high quality Lord Buddha
	wall painting on canvas today and give your home a rich and vibrant look},
	image: 'buddha.jpg',
	price: 50.00)
