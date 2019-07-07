require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'
require_relative 'lib/cd'
require_relative 'lib/product_collection'
require_relative 'lib/shopping_cart'

collection = ProductCollection.from_dir("#{__dir__}/data/")
shopping_cart = ShoppingCart.new
purchase_list = collection.to_a
user_choice = -1

until user_choice.zero?
  purchase_list.delete_if { |item| item.amount <= 0 }
  puts purchase_list.map.with_index(1) { |product, i| "#{i}. #{product}" }
  puts '0. Выход'

  puts 'Что хотите купить:'
  user_choice = STDIN.gets.to_i

  unless user_choice.zero?
    shopping_cart.add_item(collection.products[user_choice - 1])
    puts 'Вы выбрали:'
    puts shopping_cart.to_a
    puts "Всего товаров на сумму: #{shopping_cart.sum} руб."
  end
end

if shopping_cart.items.any?
  puts 'Вы купили:'
  puts shopping_cart.to_a
  puts "C Вас #{shopping_cart.sum} руб. Спасибо за покупки!"
else
  puts 'Вы ничего не выбрали.'
end
