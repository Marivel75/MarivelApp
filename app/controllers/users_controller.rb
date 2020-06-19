class UsersController < ApplicationController
  before_action :set_user
  before_action :set_current_user
  def show
    @user = User.find(params[:id])
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
end
