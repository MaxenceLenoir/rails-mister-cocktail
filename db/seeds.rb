# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all
Review.destroy_all

puts "Creating Ingredients and Cocktails..."

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
user_serialized = open(url).read
user = JSON.parse(user_serialized)

user["drinks"].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end

puts "Finished!"
