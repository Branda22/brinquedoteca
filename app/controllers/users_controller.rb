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

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @toys = @user.toys.all
  end

  def index
    @user = User.all
  end

  def destroy
  end
  
  private
    #setting strong parameters (Required in rails 4)
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
