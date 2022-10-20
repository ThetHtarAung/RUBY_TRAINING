class UserService
  require 'csv'
  class << self
    def getAllUsers
      @users = UserRepository.getAllUsers
    end
    def createUser(user)
      @is_user_create = UserRepository.createUser(user)
    end
    def getUserByID (id)
      @user = UserRepository.getUserByID(id)
    end
    def updateUser(user,user_params)
      @is_user_update = UserRepository.updateUser(user,user_params)
    end
    def deleteUser(user)
      @is_user_destroy = UserRepository.destroyUser(user)
    end

    def call(file)
      opened_file = File.open(file)
      options = { headers: true, col_sep: ',' }
      CSV.foreach(opened_file, **options) do |row|
  
        # map the CSV columns to your database columns
        user_hash = {}
        user_hash[:name] = row['name']
        user_hash[:email] = row['email']
        user_hash[:password] = row['password']
        user_hash[:profile] = row['profile']
        user_hash[:user_type] = row['user_type']
        user_hash[:phone] = row['phone']
        user_hash[:address] = row['address']
        user_hash[:dob] = row['dob']
        user_hash[:create_user_id] = row['create_user_id']
        user_hash[:updated_user_id] = row['updated_user_id']
        user_hash[:deleted_user_id] = row['deleted_user_id']
        User.create(user_hash)
       
      end
    end
  end
  
end