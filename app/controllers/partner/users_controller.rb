module Partner

  class UsersController < ApplicationController

    before_action :set_user, only: [:show, :update, :edit]

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def show

    end

    def edit
    end

    def update
      @user.update(user_params)
      redirect_to partner_user_path(@user[:id]), notice: "Les modifications ont été enregistrées."
    end

    def destroy
    
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

  end
end
