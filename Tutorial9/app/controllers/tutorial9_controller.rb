class Tutorial9Controller < ApplicationController
  def index
    
  end
  def upload
    uploaded_file = params[:picture]
    folder_name = params[:title]
    Dir.mkdir("./app/assets/images/#{folder_name}") unless File.exists?("./app/assets/images/#{folder_name}")
    File.open("./app/assets/images/#{folder_name}/#{uploaded_file.original_filename}", "wb") do |file|
      file.write(uploaded_file.read)
    end
    flash[:notice] = "You have successfully added!"
    redirect_to root_url
      
  
  end
   
  
  
  
end