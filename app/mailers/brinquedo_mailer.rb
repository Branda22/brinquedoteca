class BrinquedoMailer < ActionMailer::Base
  default from: "christian.brandalise@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.brinquedo_mailer.greeting.subject
  #
  def greeting(user)
    @user = user

    mail to: @user.email, subject: "Welcome to Brinquedoteca."
  end
end
