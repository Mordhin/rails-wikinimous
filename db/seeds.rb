# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
index = 1
puts 'Creating 10 fake articles...'
10.times do
  article = Article.new(
    title: Faker::Company.bs,
    content: Faker::Company.catch_phrase
  )
  article.save!
  puts index
    index += 1
end
puts 'finished!'