# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Training.destroy_all
# Booking.destroy_all
User.destroy_all

User.create!(
  email: "soulalydia1@gmail.com",
  password: "123456"
)

User.create!(
  email: "ana@gmail.com",
  password: "123456"
)

User.create!(
  email: "romane@gmail.com",
  password: "123456"
)

Training.create!(
  title: "Cours de boxe samedi soir",
  date: Date.new(2023, 2, 14),
  start_at: DateTime.new(2023, 2, 14, 8, 0, 0),
  end_at: DateTime.new(2023, 2, 14, 9, 0, 0),
  description: "Coucou",
  title_address: "Salle de boxe Pantin",
  price: 15,
  participation: 35,
  coach: "A x N"
)

Training.create!(
  title: "Cours de boxe vendredi soir",
  date: Date.new(2023, 2, 16),
  start_at: DateTime.new(2023, 2, 16, 8, 0, 0),
  end_at: DateTime.new(2023, 2, 16, 9, 0, 0),
  description: "Salut",
  title_address: "Fitness Park 94",
  price: 15,
  participation: 35,
  coach: "A x N"
)
