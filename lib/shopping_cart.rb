# frozen_string_literal: true

class ShoppingCart
  attr_reader :items, :sum

  def initialize
    @items = []
    @sum = 0
  end

  def add_item(item)
    @items << item
    item.amount -= 1
    @sum += item.price
  end

  def show_cart
    puts 'Вы выбрали:'
    puts @items.to_a
    puts "Всего товаров на сумму: #{@sum} руб."
  end

  def show_total
    puts 'Вы купили:'
    puts @items.to_a
    puts "C Вас #{@sum} руб. Спасибо за покупки!"
  end

  def to_a
    @items
  end
end
