class LoginController < ApplicationController
  def index
    
  end
  def login
    @user = params[:email]
    @password = params[:password]
    @boolean = true
    if @user == "hello@gmail.com" && @password == "1111"
      flash[:notice] = "You have successfully logged in."
      redirect_to login_url
    else 
      flash[:notice] = "Wrong email or password!"
      redirect_to login_url
    end
  end

  
end
