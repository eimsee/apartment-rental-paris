class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy,]
  before_action :set_offer, only: [:new, :create]

  def show
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    raise
    @booking = Booking.new(booking_params)
    @booking.offer = @offers
    @booking.user = current_user
      if @booking.save!
        redirect_to booking_path(@booking)
      else
        render :new
      end
  end

  def edit
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :content)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_offer
    @offers = Offer.find(params[:offer_id])
  end
end
