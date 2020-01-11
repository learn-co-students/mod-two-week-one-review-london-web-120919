class SeasController < ApplicationController
  #define your controller actions here

  def index
    @seas = Sea.all
  end

  def new
    @sea = Sea.new
    
    # @sea = Sea.create(sea_params[:name], sea_params[:temperature], sea_params[:bio], sea_params[:mood], sea_params[:image_url], sea_params[:favorite_color], sea_params[:scariest_creature], sea_params[:has_mermaids))
  end

  def create
    @sea = Sea.create(sea_params)
    redirect_to seas_path
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update(sea_params)
    redirect_to seas_path

  end

  def welcome 

  end

  def show
    @sea = Sea.find(params[:id])
  end

  def edit
    @sea = Sea.find(params[:id])
    # params.delete("_method")
    # params[:has_mermaids] ||= false
    # @sea.update(sea_params)
  end

  def destroy
    @sea = Sea.find(params[:id])
    @sea.delete
    redirect_to seas_path
  end




  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
