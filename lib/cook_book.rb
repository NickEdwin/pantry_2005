require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

class CookBook
    attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    recipes << recipe
  end

  def ingredients
    recipes.map do |recipe|
      recipe.ingredients.map do |item|
        item.name
      end
    end.flatten.uniq
  end

  def highest_calorie_meal
    total = Hash.new(0)
    recipes.map do |recipe|
      recipe.ingredients_required.map do |ingredient, amount|
        total[recipe] += ingredient.calories * amount
      end
    end
    require"pry"; binding.pry
    total.transform_values.max  
  end
end
