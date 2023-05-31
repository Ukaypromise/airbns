# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_mailer/user_created
  def user_created
    WelcomeMailer.with(user:User.first, product: Product.first).user_created
  end

end
