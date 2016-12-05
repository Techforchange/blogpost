class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def new
  end

  def create
    render plain: params[:article].inspect
  end

  def destroy_user_session_path
    root_path
  end
end
