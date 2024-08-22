class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all

    # Le champ d'application `geocoded` ne filtre que les produits avec des coordonnées
    @markers = @products.geocoded.map do |product|
      {
        lat: product.latitude,
        lng: product.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { product: product }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @owner = User.find(@product.user_id)
    @booking = Booking.new(product: @product, user: current_user)
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

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price_per_day, :photo, :address)
  end
end
