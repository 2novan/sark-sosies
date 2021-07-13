class SosiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def new
    @sosie = Sosie.new
  end

  def create
    @sosie = Sosie.new(sosie_params)
    @sosie.user = current_user
    if @sosie.save
      redirect_to(sosy_path(@sosie))
    else
      render(:new)
    end
  end

  def index
    @sosies = Sosie.where.not(latitude: nil, longitude: nil)
    @markers = @sosies.geocoded.map do |sosie|
      {
        lat: sosie.latitude,
        lng: sosie.longitude
      }
    end
  end

  def show
    @sosie = Sosie.find(params[:id])
    @booking = Booking.new
  end

  private

  def sosie_params
    params.require(:sosie).permit(:name, :description, :address, :price_per_day, :photo)
  end
end
