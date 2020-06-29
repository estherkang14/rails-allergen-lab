class IngredientsController < ApplicationController
    before_action :find_ingredient, only: [:show, :destroy, :edit, :update]

    def index 
        #@ingredients = Ingredient.all
        @ingredients = Ingredient.sorted_ingredients
    end 

    def show
    end 

    def new
        @ingredient = Ingredient.new
    end 

    def create
        @ingredient = Ingredient.create(ing_params)
        redirect_to ingredient_path(@ingredient.id)
    end 

    def edit
    end

    def update
        @ingredient.update(ing_params)
        redirect_to ingredient_path(@ingredient.id)
    end 

    def destroy
        @ingredient.destroy
        redirect_to ingredients_path
    end 

    private 
    
    def find_ingredient
        @ingredient = Ingredient.find(params[:id])
    end 

    def ing_params
        params.require(:ingredient).permit(:name) 
    end 
    
end
