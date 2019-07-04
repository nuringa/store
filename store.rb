require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

puts 'Вот такие товары у нас есть:'

film = Movie.from_file("#{__dir__}/data/films/01.txt")
book = Book.from_file("#{__dir__}/data/books/01.txt")

puts film
puts book

begin
  Product.from_file("#{__dir__}/data/books/01.txt")
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
