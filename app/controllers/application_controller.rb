class ApplicationController < ActionController::Base
  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]

    # methods you build in controller do not permeate to your ActionView part of your code.

    # you can't call this in your html.erb unless you explicitly say so.
    # this is a helper method --> use only in views.
  end
  helper_method :current_user

end
