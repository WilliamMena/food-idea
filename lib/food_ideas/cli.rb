# Our CLI Controller
class FoodIdeas::CLI
  require 'pry'

@@all_recipes = []
@@ingredients = []

  def greet
    puts "Welcome to my gem"
    puts "Instructions, blah blah"
    user_ingredients
    ingredients_again
  end

  def user_ingredients
    puts "Please enter up to 5 ingredients for the recipe search. Each ingredient one at a time"
    puts "Type 'go' when no more ingredients"
      x = 0
      input = nil
      while input != "exit"
        x += 1
        print "#{x}. "
        input = gets.strip.downcase
      if x >= 5
        show_recipes
        break
      end
        case input
        when "go"
          show_recipes
          #search for the recipe
        when "exit"
          #can ask if the user is sure s/he wants to exit the program
          break
        else
          ingredients << input
          # binding.pry
        end
      end

#either input 1 by 1 or all 5 in one string. 



# 2.2.3 :001 > "1,2,3,4"
#  => "1,2,3,4" 
# 2.2.3 :002 > "1,2,3,4".split(",")
#  => ["1", "2", "3", "4"] 
# 2.2.3 :003 > "eggs cilantro mango chicken"
#  => "eggs cilantro mango chicken" 
# 2.2.3 :004 > "eggs cilantro mango chicken".split(" ")
#  => ["eggs", "cilantro", "mango", "chicken"]
  end

  def show_recipes
    puts "1. Recipe 1"
    puts "2. Recipe 2"
    puts "3. Recipe 3"
    puts "4. Recipe 4"
    puts "5. Recipe 5"
    puts "Which recipe would you like more information on? Enter the number"
 
input = nil
    while input != "exit"
      input = gets.strip.downcase 
      case input
      when "1"
        puts "Recipe 1"
        puts "Cook time - Serving"
        puts "Description 1"
      when "2"
        puts "Recipe 2"
        puts "Cook time - Serving"
        puts "Description 2"
      when "3"
        puts "Recipe 3"
        puts "Cook time - Serving"
        puts "Description 3"
      when "4"
        puts "Recipe 4"
        puts "Cook time - Serving"
        puts "Description 4"
      when "5"
        puts "Recipe 5"
        puts "Cook time - Serving"
        puts "Description 5"
      when "6"
        puts "next recipes, only 5 for now though, sorry. Work in progress"
      when "list"
        puts "1. Recipe 1"
        puts "2. Recipe 2"
        puts "3. Recipe 3"
        puts "4. Recipe 4"
        puts "5. Recipe 5"
        puts "Which recipe would you like more information on? Enter the number"
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

  def ingredients_again

    input = nil
    while input != "n"
      puts "Would you like to enter another set of ingredients? (y/n)"
      input = gets.strip.downcase
      case input
      when "y"
        user_ingredients
        break
      else
        "I'm not sure what you want. Type 'y' for yes, 'n' for no"
      end
    end
    goodbye
  end

  def goodbye
    puts "Thanks for using my gem"
  end









end