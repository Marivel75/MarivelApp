module Admin

  class ApplicationController < ::ApplicationController

    before_action :only_admin
    before_action :isCurrentUser?

    #layout 'admin'



    def only_admin
      if !user_signed_in? || current_user.role != 'admin'
        redirect_to root_path, alert: "Accès non autorisé"
      end
    end

  end

end
