class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_product, only: [:show, :destroy]

  def index
    @products = Product.all
  end

  def show
    @owner = User.find(@product.user_id)
    @booking = Booking.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id

    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price_per_day)
  end
end
