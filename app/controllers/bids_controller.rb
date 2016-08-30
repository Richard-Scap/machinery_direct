class BidsController < ApplicationController

  def new
    @bid = Bid.new
    @product = Product.find(params[:product_id])
  end

  def create
    @bid = Bid.new(bid_params)
    @bid.product = Product.find(params[:product_id])
    @bid.save
    flash[:success] = "Great Success!"
    redirect_to products_path
  end

  def show
  #  binding.pry
    @bid = Bid.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def index
    @bid = Bid.where(product_id: params[:product_id])
  end

  def accept_bid
    @bid = Bid.find(params[:bid_id])
    @bid.update_attribute(:accepted, true)
    @bid.save
    @product = Product.find(params[:product_id])
    @product.bids.each do |bid|
      bid.update_attribute(:accepted, false) unless bid.id == params[:bid_id].to_i
    end
    flash[:success] = "Bid Accepted!"
    redirect_to product_url(params[:product_id])
  end

  private
  def bid_params
    params.require(:bid).permit(:id, :bid_price, :product_id, :created_at, :updated_at)
  end

end
