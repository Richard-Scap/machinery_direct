class BidsController < ApplicationController

  def new
    @bid = Bid.new
  end

  def create
    @bid = Bid.new
    @bid.save
  end

  def show
    @bid = Bid.find(params [:id])
  end

  def index
    @bids = Bid.all
  end

end
