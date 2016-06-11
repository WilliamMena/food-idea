class Recipe

attr_accessor :name, :time, :servings, :recipe_ingredients, :directions, :url, :description

  @@all_recipes = []

  def initialize
    @@all_recipes << self
  end

  def self.clear
    @@all_recipes.clear
  end

  def self.all
    @@all_recipes
  end
end