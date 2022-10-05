class LogoutController < ApplicationController
  def index
    @user = params[:email]
    @password = params[:password]
    @boolean = true
    if @user == "hello@gmail.com" && @password == "1111"
      @message = "Log out Successfully!"
    else 
      @message = "Something wrong!"
      @boolean = false
    end
  end

  
end