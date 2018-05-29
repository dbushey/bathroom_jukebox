class ApplicationController < ActionController::Base
  def home
    if session[:user_id] == nil
      redirect_to login_path
    end
  end
end
