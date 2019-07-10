class UsersController < ApplicationController
     def index
        users = User.all
        self.render json: users
    end
    
     def create
        user = User.new(name: params[:user].permit(:name, :email))
        
        if user.save!
            render json: user
        else 
            render josn: user.errors.full_message, status: :unprocessable_entity
        end
    end
    
    def show
        @user = User.find(params[:id])
        self.render json: User.find(self.params[:id])
    end
    
    def update
        user = User.find(params[:id])
        user.update(params[:user].permit(:name, :email))
    end 
    
    def destroy
       user = User.find(params[:id])
       user.destroy
       redirect_to users_url
    end
    
    
end