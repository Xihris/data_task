module UsersHelper
    
 def find_count(user)
   Unit.where(user_id:  "#{user.id}", complete: false).size
 end
end
