class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

helper_method :current_user

private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

  # # Finds the User with the ID stored in the session with the key
  # # :current_user_id This is a common way to handle user login in
  # # a Rails application; logging in sets the session value and
  # # logging out removes it.
  # def current_user
  #   @_current_user ||= session[:current_user_id] &&
  #     User.find(session[:current_user_id])
  # end

end