require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

movie = Movie.new(price: 290, amount: 12)
puts "Фильм 'Леон' стоит #{movie.price} руб."