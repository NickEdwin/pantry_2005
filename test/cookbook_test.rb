require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'
require 'minitest/autorun'
require 'minitest/pride'


class CookBookTest < Minitest::Test

  def test_it_exists
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
  end

  def test_it_adds_recipies
    cookbook = CookBook.new
    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)
    expected = [recipe1, recipe2]
    assert_equal expected, cookbook.recipes

  end
end
