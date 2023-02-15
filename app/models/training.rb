class Training < ApplicationRecord
  has_many :bookings, dependent: :destroy

  TITLE = ["Cours de boxe vendredi soir", "Cours de boxe samedi soir"]
  DESCRIPTION = ["Lorem ipsum dolor sit amet. Sed earum natus eos officia atque ab
    omnis nihil sed ipsum modi qui nemo perferendis. Qui dolorem vitae est harum aliquid
    et quia provident et molestiae laboriosam est odio tenetur. S
    it quia sunt aut itaque natus id inventore unde qui aliquam unde!"]
  TITLE_ADDRESS = ["Fitness Park 94", "Salle de boxe Pantin"]

  validates :title, inclusion: { in: Training::TITLE }, presence: true
  validates :date, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :description, { in: Training::DESCRIPTION }, presence: true
  validates :title_address, { in: Training::TITLE_ADDRESS }, presence: true
  validates :price, presence: true
  validates :participation, presence: true
end
