class ProductsController < ApplicationController

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
   if @product.save
    redirect_to dashboard_path, flash: {notice: "Product Successfully Created"}
  else
    render :new
  end
end

def edit
  @product = Product.find(params[:id])
end

def update
  @product = Product.find(params[:id])
  if @product.update_attributes(product_params)
    redirect_to dashboard_path, flash: {notice: "Product Successfully Modified"}
  else
    render :edit
  end
end

def cart
  @product = Product.find(params[:product_id])
  @gst = ((@product.cost_price - @product.discount) * @product.gst_percentage/100)
end

def checkout
  @product = Product.find(params[:product_id])
end

private

def product_params
  params.require(:product).permit(:name, :cost_price, :discount, :product_type)
end
end
