module Admin

  class UsersController < ApplicationController

    before_action :set_user, only: [:show, :update, :edit, :destroy]

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def show
      @user = User.find(params[:id])
    end

    def edit
    end

    def update
      @user.update(user_params)
      redirect_to admin_user_path(@user[:id]), notice: "Le compte a été modifié."
    end

    def destroy
      @user.destroy
      redirect_to admin_users_path, notice: "Le compte a été supprimé."
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

  end
end
