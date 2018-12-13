class SessionsController < ApplicationController
  def new

  end

  def create
    
    user = User.find_by(name: params[:username])
    if user && User.authenticate(user.email, params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end
end
