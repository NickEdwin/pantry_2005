class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def restock(ingredient, amount)
    stock[ingredient] += amount
  end

  def stock_check(ingredients)
    total = 0
    stock.each do |ingred, amount|
        if ingred == ingredients
        total += amount
      end
    end
    total
  end
end
