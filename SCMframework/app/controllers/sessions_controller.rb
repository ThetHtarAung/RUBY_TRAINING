
class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:email])
    password = User.find_by(password: params[:password])
    if user.present? && password.present?
      @email = user.email
      session[:name] = user.name
      flash[:notice] = "Logged in successfully"
      redirect_to user_index_path 
    else
      flash[:danger] = "Invalid email or password"
      redirect_to login_path
    end
  end
  def destroy
    session[:id] = nil
    flash[:notice] = "Logged out successfully"
    redirect_to login_path
  end
 
end