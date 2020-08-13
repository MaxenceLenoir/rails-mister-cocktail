class ReviewsController < ApplicationController
  
  def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render "new"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :cocktail_id)
  end
end
