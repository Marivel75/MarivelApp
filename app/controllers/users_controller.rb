class UsersController < ApplicationController
  before_action :authenticate_user!

  after_action :verify_authorized
  after_action :verify_policy_scoped

  def index
    @users = User.all
    authorize User
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: "L'utilisateur a été supprimé." }
      format.json { head :no_content }
    end
  end

end
