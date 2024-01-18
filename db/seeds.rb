# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Crear un usuario

User.destroy_all


user1 = User.create(email: "example@gmail.com", name: "Alejandro", bio: "me encanta estar en la playa y escribir cosas de la gente", nickname: "Ale", password: "password")

  # Crear un post y asociarlo con el usuario
Post.create(user: user1, title: "Tengan un hermoso día")
