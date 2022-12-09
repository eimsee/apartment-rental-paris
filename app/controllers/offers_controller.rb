class OffersController < ApplicationController
  def index
    @offers = Offer.all
    @offer = Offer.where(id: params[:id])
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { offer: offer})
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @offers = Offer.where(id: params[:id])
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { offer: offer})
      }
    end
  end
end
