module SessionsHelper

  # Logs in the given user.
  def log_in(administrator)
    session[:administrator_id] = administrator.id
  end

  # Returns the current logged-in user (if any).
  def current_administrator
    if session[:administrator_id]
      @current_administrator ||= Administrator.find_by(id: session[:administrator_id])
    end
  end

   # Returns true if the user is logged in, false otherwise.
   def logged_in?
    !current_administrator.nil?
  end
    # Logs out the current user.
    def log_out
      session.delete(:administrator_id)
      @current_administrator = nil
    end
end
