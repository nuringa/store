require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

puts 'Вот такие товары у нас есть:'

film = Movie.new(title: 'Леон', director: 'Люк Бессон', price: 990)
film.year = 1994
film.update(amount: 5)

book = Book.new(title: 'Идиот', genre: 'роман', amount: 10)
book.author = 'Федька Достоевский'
book.update(author: 'Фёдор Достоевский', price: 1500)

# Выведем результат на экран
puts film
puts book
