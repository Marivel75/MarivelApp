class UserPolicy

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    @current_user.admin?
  end

end
