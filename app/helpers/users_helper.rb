module UsersHelper
    
 def find_count(user)
   Unit.where("user_id = #{user.id}").size
 end
end
