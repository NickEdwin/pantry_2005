require './lib/ingredient'
require './lib/cook_book'
require './lib/pantry'

class Recipe < CookBook
  attr_reader :name,
              :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, amount)
    ingredients_required[ingredient] += amount
  end

  def ingredients
    ingredients_required.keys
  end

  def total_calories
    total_cal = 0
    ingredients_required.each do |ingredient, amount|
      total_cal += ingredient.calories * amount
    end
    total_cal
  end
end
