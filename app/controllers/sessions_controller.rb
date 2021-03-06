class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "You have successfuly logged in"
      log_in(user)
      redirect_to user
    else
      flash[:alert] = "Invalid email or password"
      redirect_to new_session_path
    end
  end

  def destroy
    flash[:success] = "Logged out"
    log_out if logged_in?
    redirect_to root_url
  end
  
  private
  
    
end
