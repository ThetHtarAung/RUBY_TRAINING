class UserController < ApplicationController
  require 'csv'
  def index
    
    #sql = "SELECT * FROM users"
    #@user = ActiveRecord::Base.connection.execute(sql)
    @user = User.all

    respond_to do |format|
      format.html
      format.csv do
        filename = ['Users', Date.today.to_s].join(' ')
        send_data User.to_csv(@user), filename:, content_type: 'text/csv'
      end
    end
  end
    
  
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params_create)
    @is_user_create = UserService.createUser(@user)
    if @is_user_create
      redirect_to user_index_path
    else
      
    end
   
  end
  
  def edit
    @user = UserService.getUserByID(params[:id])
  end
  def update
    @user = UserService.getUserByID(params[:id]) 
    @is_user_update = UserService.updateUser(@user,user_params)
    if @is_user_update  
      redirect_to user_index_path
    else 
     
    end
  end
  def destroy
    @user = UserService.getUserByID(params[:id])
    puts @user
    @is_user_destroy = UserService.deleteUser(@user)
    if @is_user_destroy
      redirect_to user_index_path
    else
      
    end
 
   
  end

  def import
    return redirect_to request.referer, notice: 'No file added' if params[:file].nil?
    return redirect_to request.referer, notice: 'Only CSV files allowed' unless params[:file].content_type == 'text/csv'

    UserService.call(params[:file])

    redirect_to request.referer, notice: 'Import started...'
  end
  def search
    redirect_to login_path
  end


  private
  def user_params
    params.require(:user).permit(:name, :email,:password,:profile,:phone,:address,:dob,:user_type)
  end
  private
  def user_params_create
    params.permit(:name, :email,:password,:profile,:phone,:address,:dob,:user_type)
  end
 
end
