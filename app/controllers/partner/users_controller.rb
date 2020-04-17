module Partner

  class UsersController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update]

    def show

    end


    def edit

    end


    def update
      @user = User.update(user_params)
      redirect_to partner_user_path(@user([:id])), notice: "Les modifications ont été enregistrées."
    end

  end

  private

    def set_user
      @user = User.find(params[:id])
    end

end
