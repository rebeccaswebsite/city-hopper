class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :authorized?

 def current_user
   @current_user ||= User.find_by_id(session[:user_id])
 end

  def logged_in?
    current_user != nil
  end

  def authorized?
    if !logged_in?
      flash[:authorized] = "You are not logged in"
      redirect_to login_form_path and return
    end
  end
 
  def authorized_for(user_id)
    if current_user.id != user_id.to_i
      flash[:authorized] = "You can’t view a page that doesn’t belong to you."
      redirect_to current_user
    end
  end

end
