class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize
  def index
	#if params[:search]
		#@products = Product.where('name LIKE ?', "%#{params[:search]}%")
	#else
	@products = Product.order(:name)
	#end
  end
  
  def show_product
	if params[:search]
		@products = Product.where('name LIKE ?', "%#{params[:search]}%")
	else
		@products = nil
	end
  end
end
