class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :destroy]
    
    def index
        @recipes = Recipe.all
    end 

    def show
    end 

    def new 
        @recipe = Recipe.new
    end 

    def create
        @recipe = Recipe.create(strong_params)
        redirect_to recipe_path(@recipe.id) 
    end
    
    def edit
    end

    def update
    end

    def destroy
        @recipe.destroy
        redirect_to recipes_path
    end 

    private
    
    def find_recipe
        @recipe = Recipe.find(params[:id])
    end 

    def strong_params
        params.require(:recipe).permit(:name, :user_id, :ingredient_ids => [])
    end
end
