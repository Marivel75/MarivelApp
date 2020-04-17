module Partner

  class ApplicationController < ::ApplicationController

    before_action :only_partner


    private

      def only_partner
        if !user_signed_in || current_user.role != 'partner'
          redirect_to root_path, alert: "Accès non autorisé"
        end
      end

  end


end
