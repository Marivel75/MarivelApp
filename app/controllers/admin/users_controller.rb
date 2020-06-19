module Admin

  class UsersController < ApplicationController
    before_action :only_admin
    before_action :set_user, only: [:show, :update, :edit, :destroy]

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def show

    end

    def edit
      @roles = User.roles.keys.to_a
    end

    def update
      @user.update(user_params)
      redirect_to user_path(@user[:id]), notice: "Les modifications ont été enregistrées."
    end

    # def destroy
    #   @user.destroy
    #   redirect_to admin_users_path, notice: "Le compte a été supprimé."
    # end

    private

    def only_admin
      if !user_signed_in? || current_user.role != 'admin'
        redirect_to root_path, alert: "Accès non autorisé"
      end
    end

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :description, :role)
    end

  end
end
