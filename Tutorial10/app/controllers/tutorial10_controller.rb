class Tutorial10Controller < ApplicationController
  require 'roo'
  def index
  end
  def upload
    file_name = params[:title]
    file_type = params[:type]
    file_data = Array.new
    if file_type === "txt"
      afile = File.open("./app/assets/files/#{file_name}.#{file_type}") 
      file_data = afile.read
     
    elsif file_type === "xlsx"
      afile = Roo::Excelx.new("./app/assets/files/#{file_name}.#{file_type}")
      afile.each do |row|
      file_data << row
      end
    end
    flash[:notice] = file_data
    redirect_to tutorial10_url
  end
end
