# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Usando Faker
12.times do |i|
  Todo.create(
    title: Faker::Commerce.product_name,
    photo: "http://lorempixel.com/400/200/"
  )
end

# todos = Todo.create ([
#   { title: 'Comiendo una empanada',
#   photo: 'https://www.midiariodecocina.com/wp-content/uploads/2015/07/Empanadas-de-mariscos01.jpg',
#   }
#   ])
