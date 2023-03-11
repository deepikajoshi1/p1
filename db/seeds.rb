# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

@user_count = User.count
if @user_count.zero?
  puts "Creating users..."
  4.times do
    User.create!(
      email: Faker::Internet.email,
      password: Faker::Internet.password
    )
  end
  puts "Finished!"
end
