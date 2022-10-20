class UserRepository
  class << self
    def getAllUsers
      #sql = "SELECT * FROM users"
      #@user = ActiveRecord::Base.connection.execute(sql)
      @user = User.all
    end 
    def createUser(user)
      @is_user_create = user.save
    end 
    def getUserByID(id)
      @user = User.find(id)
    end
    def updateUser(user, user_params)
      @is_user_update = user.update(user_params)
    end
    def destroyUser(user)
      #sql = "DELETE FROM users WHERE users.id = #{user.id}"
      @is_user_destroy = user.destroy
      
    end
  end
end
