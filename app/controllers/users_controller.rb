class UsersController < ApplicationController
  def new
    #provides an @user IVAR for the form helper.
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:success] = "You have successfuly signed up"
      log_in(@user)
      redirect_to user_path(@user)
    else
      flash[:alert] = "Sign up failed"
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
    @toys = @user.toys.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update 
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile successfuly updated"
      redirect_to @user
    else
      flash.now[:alert] = "Something is wrong"
      render 'edit'
    end
  end
  
  def index
    @user = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to root_url
  end
  
  private
    #setting strong parameters (Required in rails 4)
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
