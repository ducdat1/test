class HomeController < ApplicationController
	 skip_before_filter :authorize
  def index
    @products = Product.order(:name)
    @cart = current_cart
  end
  def show
  	@products = Product.order(:name)
  	@cart = current_cart
  end  
  def search
  	@search = Product.like(params[:search])
  	render :layout => false
  	# respond_to do |format|
   #    format.html 
   #    format.js 
   #  end
  end
end
