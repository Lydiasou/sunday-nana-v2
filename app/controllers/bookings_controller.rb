class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @training = Training.find(params[:training_id])
    @booking = Booking.new
  end

  def show
    @training = Training.find(params[:training_id])
    @booking = Booking.find(params[:id])
  end

  def create
    @user = current_user
    @training = Training.find(params[:training_id])
    @booking = Booking.new(booking_params)
    @booking.training = @training
    @booking.total_price = total_price(@training)
    @booking.user = @user
    @booking.e_mail = email_booking
    @booking.save
    redirect_to training_path(@training)
  end

  def destroy
    @training = Training.find(params[:training_id])
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to training_path(@training), status: :see_other
  end

  private

  def total_price(training)
    training.price
  end

  def email_booking
    @booking.user.email
  end

  def booking_params
    params.require(:booking).permit(:total_price, :first_name, :phone_number, :e_mail)
  end
end
