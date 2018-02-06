module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (s'il y en a un).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if l'utilisateur est logged in, sinon false .
 def logged_in?
   !current_user.nil?
 end

 # Logs out the current user.
 def log_out
   session.delete(:user_id)
   @current_user = nil
 end
end
