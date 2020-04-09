module Admin

  class UsersController < ApplicationController

    def index
      @users = User.all
    end

    def new

    end

    def create

    end

    def show
      @user = User.find(params[:id])
    end

    def edit

    end

    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_path, notice: "L'utilisateur a été supprimé." }
        format.json { head :no_content }
      end
    end

  end


end
