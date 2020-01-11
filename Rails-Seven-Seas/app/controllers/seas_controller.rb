class SeasController < ApplicationController
  #define your controller actions here
  def edit
    @sea = Sea.find(params[:id])
    # params.delete("_method")
    # params[:has_mermaids] ||= false
    # @sea.update(params[:name], params[:temperature], params[:bio], params[:mood], params[:image_url], params[:favorite_color], params[:scariest_creature], params[:has_mermaids])
    
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update(sea_params)
    redirect_to seas_path
  end

  def index
    @seas = Sea.all
  end

  def new
    @sea = Sea.new
    # @sea = Sea.create(params[:name], params[:temperature], params[:bio], params[:favorite_color], params[:scariest_creature], params[:has_mermaids])
  end

  def create
    @sea = Sea.create(sea_params)
    redirect_to seas_path
  end

  def show
    @sea = Sea.find(params[:id])
  end

  def welcome

  end

  def destroy
    @sea = Sea.find(params[:id])
    @sea.delete
    redirect_to seas_path
  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
