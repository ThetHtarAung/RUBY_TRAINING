class LogoutController < ApplicationController
  def index
   
  end
  def logout
    @user = params[:email]
    @password = params[:password]
    @boolean = true
    if @user == "hello@gmail.com" && @password == "1111"
      flash[:notice] = "You have successfully logged out."
      redirect_to logout_url
    else 
      flash[:notice] = "Wrong email or password!"
      redirect_to logout_url
    end
  end

  
end