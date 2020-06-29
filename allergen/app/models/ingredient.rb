class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients
    has_many :allergies 
    has_many :users, through: :allergies

    def allergy_count
        self.users.count 
    end 

    def self.sorted_ingredients
        ings = Ingredient.select('ingredient.id', 'ingredient.name')
        byebug
    end 
end
