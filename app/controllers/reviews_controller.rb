class ReviewsController < ApplicationController
  def show
    @movie = Movie.find params[:id]
    @review = Review.new
  end
  def create
    @movie = Movie.find params[:movie] 
    @review = @movie.review = Review.new(review_params)
    if @review.save
      redirect_to comment_path(@review)
    end
  end
  
 
  
  private
  
  def review_params
    params.require(:review).permit(:description,:rating)
  end
end
