class ReviewsController < ApplicationController
  before_action :set_product

  def create
    @review = @product.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      update_average_rating
      redirect_to @product, notice: 'Thank you for your review!'
    else
      flash[:alert] = 'There was an error submitting your review.'
      redirect_to @product
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def review_params
    params.require(:review).permit(:rating)
  end

  def update_average_rating
    @product.update(average_rating: @product.reviews.average(:rating).to_f)
  end
end



  # finds the product with the id in the URL
  # @product = Product.find(params[:id])

  # # creating method to find average rating for each product
  # def average_rating
  #   @rating = [] # take all rating of a product and store in empty array
  #   sum = 0 # initialise counter
  #   @rating.each do |product_rating|
  #     sum += product_rating
  #   end
  #   @average_rating = sum.fdiv(@rating.count)
  # end

  # def index
  #   @average_rating.calculate_averageRating # calling average method on instance variable average
  #   @rating.count # calling the count method on instance variable rating
  # end
