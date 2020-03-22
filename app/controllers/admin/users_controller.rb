class Admin::UsersController < AdminController
  before_action :set_user, only: [:edit, :update, :destroy]


	def index
		@users = User.all
	end

	def edit
		@user = User.find(params[:id])

	end

	def update
		@user = User.find(params[:id])

		if @user.update(first_name: params[:first_name],
			last_name: params[:last_name],
			description: params[:description])

		flash[:success] = "User profile successfully modified! 👍"
		redirect_to user_path
	else
		render 'edit'
	end
end

def destroy
	@user = User.find(params[:id])
	@user.destroy
  flash[:alert] = "User deleted! 🗑️"
  redirect_to admin_users_path
  end


private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description)
  end
end
