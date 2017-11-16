class UserMailer < ApplicationMailer

  def signup_confirmation(user)
    @user = user
    mail to: user.email, subject: "Thank You For Registering"
  end
end
