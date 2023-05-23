# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning Movie DB'
Movie.destroy_all
# if Rails.env.development?

puts 'Creating strings'

Movie.create(title: 'Wonder Woman 1984', overview: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s', poster_url: 'https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg', rating: 6.9)
Movie.create(title: 'The Shawshank Redemption', overview: 'Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison', poster_url: 'https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg', rating: 8.7)
Movie.create(title: 'Titanic', overview: '101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.', poster_url: 'https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg', rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: 'Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.', poster_url: 'https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg', rating: 7.0)
Movie.create(title: 'The Godfather', overview: 'Chronicle of the fictional Italian-American Corleone crime family.', poster_url: 'https://image.tmdb.org/t/p/original/3bhkrj58Vtu7enYsRolD1fZdja1.jpg', rating: 8.7)
Movie.create(title: "Schindler's List", overview: 'The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis.', poster_url: 'https://image.tmdb.org/t/p/original/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg', rating: 8.6)
Movie.create(title: '千と千尋の神隠し', overview: 'A young girl, Chihiro, becomes trapped in a strange new world of spirits.', poster_url: 'https://image.tmdb.org/t/p/original/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg', rating: 8.6)

total_movies = Movie.all.count

puts "Finished! Created #{total_movies} movies!"
