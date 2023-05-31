class WelcomeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.user_created.subject
  #
  def user_created
    @user= params[:user]
    @product= params[:product]
    @greeting = "Hi"

    mail(
      to: "to@example.org",
      to: User.first.email,
      cc:User.all.pluck(:email),
      bcc:"promise@example.com",
      subject: "Welcome"
    )
  end
end
