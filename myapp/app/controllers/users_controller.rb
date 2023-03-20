class UsersController < ApplicationController
    def index
        @Users = User.all
    end

    def show
      @User = User.find(params[:id])  
    end
    def new
        @User = User.new
    end

    def create
        @User = User.new(user_params)
        if @User.save
            redirect_to user_path(@User)
        else
            render :new
        end    
    end    
    def edit
        @User = User.find(params[:id])
    end
    def update
        @User = User.find(params[:id])
        if @User.update(user_params)
            redirect_to user_path(@User)
        else
            render :edit
        end    
    end    

    private

    def user_params
        params.require(:user).permit(:identificacion, :nombre, :apellido)
    end
end
