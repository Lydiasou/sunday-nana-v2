class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :training

  validates :total_price, presence: true
  validates :first_name, presence: true
  validates :phone_number, presence: true
  validates :e_mail, presence: true
end
