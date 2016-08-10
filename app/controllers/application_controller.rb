class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @_current_user ||= env['current_user']
  end
  helper_method :current_user

  def signed_in?
    !!current_user
  end
  helper_method :signed_in?

  def require_user
    redirect_to new_session_path unless signed_in?
  end
end