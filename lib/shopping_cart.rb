class ShoppingCart
  attr_reader :name,
              :capacity,
              :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    cart_details = {
            :name => @name,
            :capacity => @capacity
          }
  end

  def total_number_of_products
    @products.sum do |product|
      product.quantity
    end
  end

  def is_full?
    total_number_of_products > @capacity
  end

  def products_by_category(category)
    @products.select do |product|
      product.category == category
    end
  end
end
