class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
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
end
