# FoodIdeas

HEY! Welcome to my gem FoodIdeas. The concept behind this ruby gem is to give you a list of recipe ideas when you're unsure of what to eat. The user (often times you or your friends who you're showing this too) will insert a list of ingredients (I suggest things you already have in your fridge) when prompted for them and the gem will return to you up to 5 recipes. 

## Blog Post
http://williammena.github.io/2016/11/03/oh_man_has_it_been_a_while_sinatra_assessment/

## Installation
For installing this gem into your system, look below for the two options currently available. 

Add this line to your application's Gemfile:

```ruby
gem 'food_ideas'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install food_ideas

## Walkthrough

So I currently have a walk through on my blog with pictures of what you will typically encounter on your usual use of this gem. It's a very quick read if you're interested and that can be [found here.](https://williammena.github.io/2016/06/16/my_first_cli_gem_food_ideas/)

## More information on the gem, Ideas for future updates

This idea for the gem came to me when I was deciding on what to cook that day since I was already tired of my normal food routine. The original intention of the gem is for you to give the gem a list of items you already have at your disposal and have it spit back recipes you might be interested in. But of course, you can just enter ingredients you are interested in buying and eating in the future. 

The website that is currently being used for it's recipes is thefoodnetwork. I originally wanted to scrape foodnetwork and allrecipes but early on ran into a couple problems. In the future I plan to add allrecipes and a number of other recipes to have a good variety of recipes given to the user. 

When given a list of recipes, you are given an option to open up the recipe to read more information. The information you will receive is a description of the recipe (if available at the time), amount of time it will take to cook. In the future I plan on adding serving sizes and I'm debating on the full recipe and ingredients needed for this whole recipe. And having the gem adjust the ingredients due to the amount of people that will be eating. But one more feature I want to mention, since currently there is no way to view the full recipe in the gem, if you type 'url' into the gem, it will open up the url of the recipe you are currently viewing. 

## Thank You

Thank you for checking out my gem. This is my first gem that I created on my own. Even though it may be simple, I am very proud of it and very happy to see how far I've come in just a short time. Thank you again for checking this out and I hope it can be of good use to you.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/WilliamMena/food_ideas. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

