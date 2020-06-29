class UsersController < ApplicationController
    before_action :find_user, only: [:show, :destroy]
    
    def index
    end 

    def show
    end 

    def new
    end

    def create
    end 

    def destroy
    end 

    private

    def find_user
        @user = User.find(params[:id])
    end 


end
