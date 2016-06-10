class FoodIdeas::Recipe

attr_accessor :name, :cook_time, :servings, :description, :url



  def initialize
    @@all_recipes << self
  end

end