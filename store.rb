require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

puts 'Вот такие товары у нас есть:'

products = [
  Movie.new(title: 'Леон', year: 1994, director: 'Люк Бессон', price: 990, amount: 6),
  Movie.new(title: 'Дурак', year: 2014, director: 'Юрий Быков', price: 113, amount: 1),
  Book.new(title: 'Идиот', genre: 'роман', author: 'Федор Достоевский', price: 99, amount: 36)
  ]

products.each { |product| puts product }
