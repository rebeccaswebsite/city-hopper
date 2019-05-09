class UsersController < ApplicationController
before_action :authorized?, only: [:show, :edit, :update, :destroy]

    def show
        authorized_for(params[:id])
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            flash[:data] = @user
            redirect_to new_user_path
        end
    end

    def edit
        authorized_for(params[:id])
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        @user.update(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            flash[:data] = @user
            redirect_to edit_user_path
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:notice] = "Your profile has been deleted."
        redirect_to welcomes_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :bio, :password)
    end

end
