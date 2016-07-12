# require 'open-uri'
# require 'pry'
# require 'nokogiri'

class Scraper
  attr_accessor :url_middle, :url_begin, :url_end, :ingredients
  attr_reader :food_network_url
#http://www.foodnetwork.com/search/search-results.recipes.html?searchTerm=garlic+cilantro+ground+waffles&form=global&_charset_=UTF-8

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def scrape_food_network
    @url_begin = "http://www.foodnetwork.com/search/search-results.recipes.html?searchTerm="
    @url_end = "&form=global&_charset_=UTF-8"
    doc = Nokogiri::HTML(open(url_full))
    doc.css("article.recipe").each do |r|
      recipe = Recipe.new
      recipe.name = r.css("h6").text.strip
      recipe.time = r.css("dd").text
      recipe.url = food_network_url+r.css("h6 a").attr("href").value
      recipe_doc = Nokogiri::HTML(open(recipe.url))
      recipe.description = recipe_doc.css("p.quotation").text.strip.delete "[]"
      if recipe.description.empty?
        recipe.description = "Sorry, no description available."
      end
      # recipe.name = doc.css("article.recipe").first.css("h6").text.strip
      # recipe.time = doc.css("article.recipe").first.css("dd").text
      # recipe.url = food_network_url+doc.css("article.recipe").first.css("h6 a").attr("href").value
      # recipe.description = recipe_doc.css("p.quotation").text.strip.delete "[]"
    end
  end

  # def self.ingredients
  #   CLI.ingredients
  # end

  def url_full
    @url_middle = ingredients.join("+")    
    full = @url_begin+@url_middle+@url_end
    full
  end

  def food_network_url
    "http://www.foodnetwork.com"
  end





end