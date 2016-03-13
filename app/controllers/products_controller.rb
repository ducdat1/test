class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authorize, only: :show
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @cart = current_cart
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @cart = current_cart
  end

  # GET /products/new
  def new
    @product = Product.new
    @cart = current_cart
  end

  # GET /products/1/edit
  def edit
    @cart = current_cart
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @cart = current_cart
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @cart = current_cart
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def search
    if params[:search]
      @product = Product.timkiem(params[:search]).order("created_at DESC")
    else
      @product = Product.order("created_at DESC")
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :img_url, :description, :price)
    end
end
