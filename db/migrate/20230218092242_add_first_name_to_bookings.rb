class AddFirstNameToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :first_name, :string
  end
end
