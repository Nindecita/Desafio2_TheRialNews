# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])



#Character.crearails db:seed(name: "Luke", movie: movies.first)

  User.create!([
    { name: 'Bastian', email: 'admin@test.com', password: '123456', password_confirmation: '123456', role:'admin' }
  ])


3.times do
  password = Faker::Lorem.characters(number: 7)
  User.create!([
    { name: Faker::Name.first_name, email: Faker::Internet.email, password: password, password_confirmation: password}
  ])
end

4.times do
  user = User.find_by(email: 'admin@test.com')
  Notice.create!([
  { title: Faker::DcComics.title, description: Faker::Movies::BackToTheFuture.quote, 
    image: 'https://picsum.photos/200/300', user_id: user.id}])
  end