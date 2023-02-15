class Training < ApplicationRecord
  has_many :bookings, dependent: :destroy

  TITLE = ["Cours de boxe vendredi soir", "Cours de boxe samedi soir"]
  DESCRIPTION = ["Coucou", "Salut"]
  TITLE_ADDRESS = ["Fitness Park 94", "Salle de boxe Pantin"]
  COACH = ["Anais", "Naoufel", "A x N"]

  validates :title, inclusion: { in: Training::TITLE }, presence: true
  validates :date, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :description, inclusion: { in: Training::DESCRIPTION }, presence: true
  validates :title_address, inclusion: { in: Training::TITLE_ADDRESS }, presence: true
  validates :price, presence: true
  validates :participation, presence: true
  validates :coach, inclusion: { in: Training::COACH }, presence: true
end
