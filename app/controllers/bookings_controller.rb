class BookingsController < ApplicationController
  before_action :set_sosy, only: :create

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.sosie = @sosie
    @booking.start_date = Date.parse(booking_params[:start_date].split(' to ')[0])
    @booking.total_price = (@booking.end_date - @booking.start_date) / (60 * 60 * 24).to_i * @sosie.price_per_day
    if @booking.save
      redirect_to sosy_path(@sosie)
    else
      render(:new)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:end_date, :start_date, :total_price, :address, :description)
  end

  def set_sosy
    @sosie = Sosie.find(params[:sosy_id])
  end
end
