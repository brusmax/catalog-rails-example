class LandingController < ApplicationController
  def index
  	@products = Product.includes(:category).paginate(:page => params[:page], :per_page => 12)
  end
end
