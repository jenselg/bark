class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(params[:review].permit(:rating, :comment))
    @review.user = current_user
    @review.save
    redirect_to restaurant_path(@restaurant)    
  end

def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
    @review.destroy if @review.user.id == current_user.id
    redirect_to restaurant_path(@restaurant)
end
end
