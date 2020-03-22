class UserMailer < ApplicationMailer
  default from: 'rocavel.dev@zoho.eu'

  def welcome_email(user)

    @user = user

    @url  = 'http://marivel.fr/login'

    mail(to: @user.email, subject: 'Bienvenue chez Marivel')
  end
  
end
