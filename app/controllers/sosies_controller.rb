class SosiesController < ApplicationController
  def new
    @sosie = Sosie.new
  end

  def create 
    @sosie = Sosie.new(sosie_params)
    if @sosie.save
      redirect_to sosie_path(@sosie)
    else
      render(:new)
    end
  end

  def show
    @sosie = Sosie.find(params[:id])
  end

  private

  def sosie_params
    params.require(:sosie).permit(:name, :description, :address, :price_per_day )
  end
end
