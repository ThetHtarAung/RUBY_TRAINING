class LoginController < ApplicationController
  def index
  end
  def test
    email = params[:email]
    password = params[:password]
    if email == "hello@gmail.com" && password == "hello"
      flash[:notice] = "Logged in successfully."
      
    else
      flash.now[:alert] = "There was something wrong with your login details."
      
    end
   
  end
end
