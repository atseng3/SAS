module SessionsHelper
  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end
  
  def current_user=(user)
    @current_user = user
    session[:session_token] = user.session_token
  end
  
  def logged_in?
    return false if current_user.nil?
    current_user.session_token == session[:session_token]
  end
  
  def logout_current_user!
    current_user.reset_session_token!
    session_token[:session_token] = nil
  end
  
  def require_current_user!
    if current_user.nil?
      flash[:danger] = ["Please log in to Continue"]
      redirect_to new_session_url
    end
  end
end
