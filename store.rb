# frozen_string_literal: true

require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'
require_relative 'lib/cd'
require_relative 'lib/product_collection'
require_relative 'lib/shopping_cart'

collection = ProductCollection.from_dir("#{__dir__}/data/")
shopping_cart = ShoppingCart.new
purchase_list = collection.to_a.unshift('Выход')

user_choice = -1

until user_choice == 0
  puts 'Что хотите купить:'

  purchase_list.delete_if { |item| item.amount <= 0 unless item == 'Выход' }
  offer = purchase_list.map.with_index { |product, i| "#{i}. #{product}" }
  puts offer.rotate

  user_choice = STDIN.gets.to_i
  shopping_cart.add_item(collection.products[user_choice]) unless user_choice == 0
  shopping_cart.show_cart unless user_choice == 0
end

if shopping_cart.items.any?
  shopping_cart.show_total
else
  puts 'Вы ничего не выбрали.'
end
