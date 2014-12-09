class ToysController < ApplicationController
  before_action :logged_in?, only: [:create, :destroy]
  before_action :get_user
  
  def new
    @toy = @user.toys.build
  end

  def create
    @toy = @user.toys.build(toy_params)
    if @toy.save
      flash[:success] = "Toy created!"
      redirect_to @user
    end
  end

  def show
  end

  def edit
    @toy = @user.toys.find(params[:id])
  end

  def update
    @toy = @user.toys.find(params[:user_id])
    if @toy.update_attributes(toy_params)
      flash[:success] = "Toy updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def index
  end

  def destroy
    @toy = @user.toys.find(params[:user_id]).destroy
    flash[:success] = "Toy deleted"
    redirect_to @user
  end
  
  private
   
   def toy_params
     params.require(:toy).permit(:name, :manufacturer, :category)
   end
   
   def get_user
    @user = User.find(params[:user_id])
   end
end
