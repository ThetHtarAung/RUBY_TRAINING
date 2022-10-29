class UserMailer < ApplicationMailer
  default :from => @email

  def welcome_email(user)
    @user = user
    @url  = "http://localhost:3000/login"
    mail(:to => user.email, :subject => "Welcome to My User App Site")
  end
end
