class CLI

  require 'pry'
  require 'nokogiri'
  require 'open-uri'

@@all_recipes = []
@@ingredients = []

  def greet
    puts "Welcome to my gem".bold
    puts "Instructions, blah blah"
    user_ingredients
    ingredients_again
    goodbye
  end

  def user_ingredients
    puts "Please enter up to #{5.to_s.bold} ingredients for the recipe search. Each ingredient one at a time"
    puts "Type #{"'go'".cyan} when no more ingredients"
    puts "\n"
      x = 0
      input = nil
      while input != "exit"
        x += 1
        print "#{x}. "
        input = gets.strip.downcase
      if x >= 5
        puts "This may take a few seconds. Please wait.".bold
        show_recipes
        break
      end
        case input
        when "go"
          puts "This may take a few seconds. Please wait.".bold
          show_recipes
          break
          #search for the recipe
        when "exit"
          #can ask if the user is sure s/he wants to exit the program
          break
        else
          ingredients << input
        end
      end
  end

  def show_recipes
    #system("open #{recipe.url}") Opens the recipes url
    Scraper.new.scrape_food_network
    puts_recipe
 
input = nil
    while input != "exit"
      puts "\n"
      input = gets.strip.downcase
      case input
      when "1"
        puts "#{Recipe.all[0].name}".bold
        puts "Cook time: #{Recipe.all[0].time}"#add servings afterwards seperated with a -
        puts "#{Recipe.all[0].description}"
        puts "\n"
        puts "Type #{"'url'".cyan} to open recipe. #{"'list'".cyan} to view all recipes again. Another number from the list to view another recipe or #{"'exit'".cyan} to exit."
        current_view = 1
      when "2"
        puts "#{Recipe.all[1].name}".bold
        puts "Cook time: #{Recipe.all[1].time}"
        puts "#{Recipe.all[1].description}"
        puts "\n"
        puts "Type #{"'url'".cyan} to open recipe. #{"'list'".cyan} to view all recipes again. Another number from the list to view another recipe or #{"'exit'".cyan} to exit."
        current_view = 2
      when "3"
        puts "#{Recipe.all[2].name}".bold
        puts "Cook time: #{Recipe.all[2].time}"
        puts "#{Recipe.all[2].description}"
        puts "\n"
        puts "Type #{"'url'".cyan} to open recipe. #{"'list'".cyan} to view all recipes again. Another number from the list to view another recipe or #{"'exit'".cyan} to exit."
        current_view = 3
      when "4"
        puts "#{Recipe.all[3].name}".bold
        puts "Cook time: #{Recipe.all[3].time}"
        puts "#{Recipe.all[3].description}"
        puts "\n"
        puts "Type #{"'url'".cyan} to open recipe. #{"'list'".cyan} to view all recipes again. Another number from the list to view another recipe or #{"'exit'".cyan} to exit."
        current_view = 4
      when "5"
        puts "#{Recipe.all[4].name}".bold
        puts "Cook time: #{Recipe.all[4].time}"
        puts "#{Recipe.all[4].description}"
        puts "\n"
        puts "Type #{"'url'".cyan} to open recipe. #{"'list'".cyan} to view all recipes again. Another number from the list to view another recipe or #{"'exit'".cyan} to exit."
        current_view = 5
      when "6"
        puts "next recipes, only 5 for now though, sorry. Work in progress"
      when "list"
        puts_recipe
      when "url"
        system("open #{Recipe.all[current_view-1].url}")
      end
    end
   #3or5 at a time. Option for showing more recipes. 
   #puts out each recipe on it's seperate line and gives the option
   #to enter a number 1-6. 1-5 Will be food options. 6 will be next 5
   #Exit to get out of the program as a whole. 
   #List at any point to show the first 5 again.
   #1-5 will give details about the recipe.
 end

  def ingredients
    @@ingredients
  end

  def clear
    @@ingredients.clear
    Recipe.clear
  end

  def self.ingredients
    @@ingredients
  end

  def ingredients_again

    input = nil
    while input != "n"
      puts "Would you like to enter another set of ingredients? (y/n)"
      input = gets.strip.downcase
      case input
      when "y"
        #the second time around the code breaks
        clear
        user_ingredients
        ingredients_again
        break
      else
        "I'm not sure what you want. Type 'y' for yes, 'n' for no"
      end
    end
  end

  def goodbye
    puts "Thanks for using my gem"
  end

  def puts_recipe
    puts "\n"
    if Recipe.all.length == 0
      puts "There are no recipes for your ingredients. Please EXIT and enter a new set of ingredients.".bold
    else
      puts "YOUR RECIPES".bold
      Recipe.all.each.with_index do |r, i|
        if i+1 <= 5
          puts "#{i+1}. #{Recipe.all[i].name}"
        end
      end
    end
    # puts "1. #{Recipe.all[0].name}"
    # puts "2. #{Recipe.all[1].name}"
    # puts "3. #{Recipe.all[2].name}"
    # puts "4. #{Recipe.all[3].name}"
    # puts "5. #{Recipe.all[4].name}"
    if Recipe.all.length > 0
      puts "Which recipe would you like more information on? Enter the number"
    end
  end

end


class Blog
require 'nokogiri'
require 'open-uri'
  def greeting
    "Hey, my name is William Mena and welcome to my blog!"
    ask_topic
    rant
  end

  def ask_topic
    #topics will vary. Enter more questions.
    puts "Why did you join software development?"
  end

  def rant

  end


end


























