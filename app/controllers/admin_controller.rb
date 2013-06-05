class AdminController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate_member! rescue redirect_to 'new_user_session_path'
  before_filter :is_admin

  layout 'main'

  def dashboard
  end

  protected

    def is_admin
      redirect_to root_path unless current_member.is_admin?
    end

end
