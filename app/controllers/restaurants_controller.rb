class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

      if @restaurant.save
          redirect_to restaurant_path
      else
        render :new
      end
  end

  def update
    @restaurant = Resturant.find(params[:id])

      if restaurant.update_attributes(resturant_params)
        redirect_to restaurant_path(@restaurant)
      else
        render :edit
      end
  end

  def destroy
    @restaurant = Resturant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def edit
    @restaurant = Resturant.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :cuisine, :user_id, :location, :max_occupancy)
  end

end
