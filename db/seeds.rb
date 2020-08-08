# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Artist.destroy_all
Genre.destroy_all
Song.destroy_all


artists = []
5.times do 
    artists << Artist.create(name: Faker::Artist.name, bio: Faker::ChuckNorris.fact)
end

genres = []
5.times do 
    genres << Genre.create(name: Faker::Book.genre)
end


10.times do 
    Song.create(name: Faker::Superhero.name,
    artist: artists.sample,
    genre: genres.sample
    )
end


    