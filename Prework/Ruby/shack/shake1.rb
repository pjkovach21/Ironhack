class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]        
  end
 def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class Shake_shop
  def initialize ()
    @milkshake = []
  end
  def addshake (milkshake)
    @milkshake.push(milkshake)
  end
  def price_of_total ()
    total_shakes = 0
    @milkshake.each do |x|
      total_shakes += x.price_of_milkshake
    end
    return total_shakes
    end
end



nizars_milkshake = MilkShake.new
banana = Ingredient.new("banana", 2)
chocolate_chips = Ingredient.new("coco chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
petes_shake = MilkShake.new
petes_shake.add_ingredient(chocolate_chips)


joshes_shake_shop = Shake_shop.new

joshes_shake_shop.addshake(petes_shake)
joshes_shake_shop.addshake(nizars_milkshake)

 puts joshes_shake_shop.price_of_total 



