# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
    ["admin@example.com","admin@123"],
    ["lakshmi@example.com","lakshmi@example.com"]
]

user_list.each do |email,password|
    User.create( email: email, password: password)
end

movie_list = [
  [ "BatMan", "1999" ],
  [ "SpiderMan", "2000" ]
]



movie_list.each do |name,year|
  Movie.create( name: name, year: year )
end

@movie = Movie.first
@movie2 = Movie.second

@review1 = @movie.review = Review.create(description: "good movie", rating: 85 )
@review2 = @movie2.review = Review.create(description: "nice movie", rating: 82 )

@review1.comments.create(comment: "yay, I seen this movie, excellent picturazation")

@review2.comments.create(comment: "yay, I seen this movie, excellent stuff")
