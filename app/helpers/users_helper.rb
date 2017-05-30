module UsersHelper
    
 def find_count(user)
   Unit.where("id_user = #{user.id}").size
 end
end
