class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @super_power = SuperPower.find(params[:super_power_id])
    @review.super_power = @super_power
    authorize @review
    if @review.save
      redirect_to super_power_path(@super_power)
    else
      redirect_to super_power_path(@super_power), status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
