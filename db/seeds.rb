# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

Movie.destroy_all

# puts "Starting to run seeds file..."

# 10.times do
#   movie = Movie.create!(
#     title: Faker::Movie.title,
#     overview: Faker::Movie.quote,
#     poster_url: Faker::Internet.url,
#     rating: rand(1..10)
#   )
#   puts "Created movie with id #{movie.id}"
# end

require 'json'
require 'open-uri'

# url = 'http://tmdb.lewagon.com/movie/top_rated?api_key=ce9896efb804a19c567473d86dba682f'
url = 'http://tmdb.lewagon.com/movie/top_rated'
# movie_serialized = Movie.open(url).read
movies = JSON.parse(open(url).read)["results"]
puts movies.count
movies.each do |movie|
  puts movie
end

# puts "#{movie['title']} - #{movie['overview']} - #{movie['poster_url']} - #{movie['rating']}"
