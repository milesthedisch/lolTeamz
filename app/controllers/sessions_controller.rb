class SessionsController < ApplicationController
  def new
  end

  def test
  end

  def create
    user = User.find_by :username => params[:username]
    if user.present? && user.authenticate(params[:password])

      session[:user_id] = user.id
      flash[:message] = "Welcome back, #{ user.username }"
      redirect_to root_path
    else
      flash[:message] = "Invalid username or password. Please try again."
      redirect_to login_path
    end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to root_path
  end
end
