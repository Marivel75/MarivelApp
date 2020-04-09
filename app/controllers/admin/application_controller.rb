module Admin

  class ApplicationController < ::ApplicationController

    before_action :only_admin

    #layout 'admin'


    private

    def only_admin
      if !user_signed_in? || current_user.role != 'admin'
        redirect_to root_path, alert: "Accès non autorisé"
      end
    end

  end

end
