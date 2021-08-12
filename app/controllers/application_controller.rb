class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def require_login
    unless logged_in?
      session[:current_user_code] = request.headers[:HTTP_USER_CODE]
      @current_user = User.find_by(user_code: session[:current_user_code])
      # ユーザが存在しない場合は消す
      if @current_user.nil?
        session[:current_user_code] = nil
      end
    end
  end

  def logged_in?
    session[:current_user_code] == request.headers[:HTTP_USER_CODE]
  end

end
