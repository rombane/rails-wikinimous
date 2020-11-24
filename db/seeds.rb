require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  qt1 = Faker::Games::Fallout.quote
  qt2 = Faker::Quote.famous_last_words
  ttl = Faker::Games::Fallout.quote
  new_article = Article.new(title: ttl, content: "#{qt1} #{qt2}")
  new_article.save
end
