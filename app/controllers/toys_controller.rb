class ToysController < ApplicationController
  before_action :logged_in?, only: [:create, :destroy]
  before_action :get_toy, only: [:edit, :update]
  
  def new
    @toy = current_user.toys.build
  end

  def create
    @toy = current_user.toys.build(toy_params)
    if @toy.save
      flash[:success] = "Toy created!"
      redirect_to user_toy_path(current_user, @toy)
    else
      flash[:alert] = "Something went wrong, try again"
      redirect_to new_user_toy_path(current_user)
    end
  end 

  def show
    #Gets a toy to display in the show page.
    @toy = Toy.find_by(id: params[:id])
  end

  def edit
    
  end

  def update
    if @toy.update_attributes(toy_params)
      flash[:success] = "Toy updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end

  def index
    #Displays the toys of all the users
    @toys = Toy.all
  end

  def destroy
    @toy = current_user.toys.find_by(id: params[:id])
    if @toy.present?
      @toy.destroy
      flash[:success] = "Toy deleted"
    end
    redirect_to current_user
  end
  
  private
   
   def toy_params
     params.require(:toy).permit(:name, :manufacturer, :category, :image)
   end
   
   def get_toy
    @toy = current_user.toys.find(params[:id])
   end
end
