class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def new
  end

  def create
    render plain: params[:article].inspect
  end
end
