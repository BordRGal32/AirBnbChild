class RatingsController < ApplicationController

  def create
    @listing = Listing.find(params[:listing_id])
    @rating = Rating.new(rating_params)
    if @rating.save
      @listing.ratings << @rating
      flash[:notice] = "Listing Rated"
      @rating = Rating.new
        redirect_to :back

    else
      flash[:notice] ="Fail"
      redirect_to :back
    end
  end

  def rating_params
    params.require(:rating).permit(:score)
  end
end
