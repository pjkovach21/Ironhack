
class ShoppingCart

  def initialize
    @items = []
  end

  def add_item (item)
    @items.push(item)
  end
  def checkout
    total_cart = 0
    @items.each do |c|
      total_cart += c.price
    end
    return total_cart
  end
end

class Item 
  def initialize(name, price)
    @name = name
    @price = price
  end
  def price
    @price
  end
end

class Houseware < Item

  def price
    if @price >= 100
      @price = @price * 0.95
    else
      @price
    end
  end
end

class Fruit < Item
  def price
    date=Time.now
    if date.saturday? || date.sunday?
      @price * 0.90
    else
      @price
    end
  end
end

=begin
  
rescue Exception => e
  
end
class Checkout
  def initialize()
    @checkout = []
  end
  def add_item(item)
    @checkout.push(item)
  end
  def price_of_total ()
    total_cart = 0
    @checkout.each do |x|
      total_cart += y.price
  end
  return total_shakes
  end
end
=end

banana = Fruit.new("Banana", 10)
oj = Fruit.new("OJ", 10)
rice = Item.new("Rice", 1)
vac = Houseware.new("Vac", 150)
chovies = Fruit.new("chovies", 2)
tv = Houseware.new("TV",25)

puts tv.price


petes_cart = ShoppingCart.new
petes_cart.add_item(rice)
petes_cart.add_item(oj)
petes_cart.add_item(vac)
puts petes_cart.checkout
