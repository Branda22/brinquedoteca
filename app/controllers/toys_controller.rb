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
  end

  def update
  end

  def index
  end

  def delete
  end
  
  private
   
   def toy_params
     params.require(:toy).permit(:name, :manufacturer, :category)
   end
   
   def get_user
    @user = User.find(params[:user_id])
   end
end
