module Admin

  class StaticController < ApplicationController
    before_action :only_admin

    def admin

    end


  end


  private

    def only_admin
      if !user_signed_in? || current_user.role != 'admin'
        redirect_to root_path, alert: "Accès non autorisé"
      end
    end


end
