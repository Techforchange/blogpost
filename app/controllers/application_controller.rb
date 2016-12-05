class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def new
  end

  def create
    render plain: params[:article].inspect
  end
end
