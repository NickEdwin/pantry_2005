require './lib/ingredient'
require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class IngredientTest < Minitest::Test

  def test_it_exists
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    assert_instance_of Ingredient, ingredient1
  end

  def test_it_has_attributes
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    assert_equal "Cheese", ingredient1.name
    assert_equal "oz", ingredient1.unit
    assert_equal 50, ingredient1.calories
  end

  def test_it_can_create_another_ingredient
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    assert_instance_of Ingredient, ingredient2

  end
end
