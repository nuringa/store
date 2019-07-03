class Product
  attr_reader :price, :amount
  def initialize(params)
    @price = params[:price]
    @quantity = params[:amount]
  end
end
