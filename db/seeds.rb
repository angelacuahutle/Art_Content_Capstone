# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

60.times do
  User.create!(name: Faker::Name.first_name, email: Faker::Internet.email, password: 'admin123')
end

rails = Category.create(name: 'curating', priority: 2)
react = Category.create(name: 'aesthetics', priority: 1)
devops = Category.create(name: 'digital art', priority: 5)
news = Category.create(name: 'news', priority: 3)
linux = Category.create(name: 'critic', priority: 4)
postgres = Category.create(name: 'tech', priority: 6)

User.all.each do |author|
  random = 1 + rand(6)
  Article.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    body: Faker::Lorem.paragraph(sentence_count: 40),
    category_id: random,
    author_id: author.id
  )
end

# Article.all.each do |art|
#   rand_img = 1 + rand(14)
#   art.image.attach(
#     # https://stackoverflow.com/questions/55027846/how-to-seed-database-from-s3-in-a-ror-app
#     io: File.open("app/assets/images/#{rand_img}.jpg"),
#     filename: "#{rand_img}.jpg"
#   )
#   art.save
# end

# 60.times do
#   rand_usr = User.all.sample
#   rand_art = Article.all.sample
#   Vote.create( article_id: rand_art.id, author_id: rand_usr.id )
# end
