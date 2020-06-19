class UsersController < ApplicationController
  before_action :set_user
  before_action :set_current_user

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user.id), notice: "Les modifications ont été enregistrées."
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def set_current_user
    if !user_signed_in? || @user.id != current_user.id && current_user.role != 'admin'
      redirect_to root_path, alert:"Accès non autorisé"
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :description)
  end
end
