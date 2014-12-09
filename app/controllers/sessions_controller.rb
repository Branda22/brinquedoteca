class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        flash[:success] = "You have successfuly logged in"
        log_in(user)
        redirect_to user
      else
        flash.now[:alert] = "Invalid email or password"
        redirect_to root_url 
      end
    end
  end

  def destroy
    flash[:secondary] = "Logged out"
    log_out if logged_in?
    redirect_to root_url
  end
  
  private
  
    
end
