# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Allergen.destroy_all
RecipeIngredient.destroy_all


10.times do 
    User.create(name: Faker::Name.name)
end

20.times do 
    Recipe.create(name: Faker::Food.dish, user_id: User.all.sample)
end

30.times do
    Ingredient.create(name: Faker::Food.ingredient)
end

20.times do
    Allergen.create(user_id: User.all.sample, ingredient_id: Ingredient.all.sample)
end

20.times do
    RecipeIngredient.create(recipe_id: Recipe.all.sample,ingredient_id: Ingredient.all.sample)
end