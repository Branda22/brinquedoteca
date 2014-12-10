module SessionsHelper
    #Logs the user in
    def log_in(user)
      session[:user_id] = user.id
    end
    
    def log_out
      session.delete(:user_id)
    end
    
    #Checks to see if there is a logged in user
    def logged_in?
        if !session[:user_id].nil?
            return true
        else
            return false
        end
    end
    
    #Returns the current user in the session.
    def current_user
        current_user = User.find_by(id: session[:user_id])
    end
end
