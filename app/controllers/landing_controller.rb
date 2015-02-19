class LandingController < ApplicationController
  def index
  	if params[:category]
  		@products = Product.where(category: params[:category]).includes(:category).paginate(:page => params[:page], :per_page => 12)
	else
		@products = Product.includes(:category).paginate(:page => params[:page], :per_page => 12)
	end
  end
end
