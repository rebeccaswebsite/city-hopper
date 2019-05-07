class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new(user_params)
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
        @user = User.find(parama[:id])
    end

    def update
        @user = User.find(params[:id])
        
        @user.update(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:notice] = "Your profile has been deleted."
        redirect_to welcomes_path
    end

    def method_name
        
    end

    private

    def user_params
        params.require(:user).permit(:name, :bio)
    end

end
