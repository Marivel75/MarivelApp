module PermissionsHelper

  def isAdmin?
    user_signed_in? && current_user.role == "admin"
  end

  def isPartner?
    user_signed_in? && current_user.role == "partner"
  end

  def isTraveler?
    user_signed_in? && current_user.role == "traveler"
  end

end
