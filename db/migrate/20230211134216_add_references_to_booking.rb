class AddReferencesToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :training, foreign_key: true
  end
end
