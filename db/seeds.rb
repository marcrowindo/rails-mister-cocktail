require 'JSON'
require 'open-uri'

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
elem_serialized = open(url).read
ingre = JSON.parse(elem_serialized)

array = ingre["drinks"]

# p ingre[“drinks”][0][“strIngredient1”]

array.each do |i|
 ingredient_name = i["strIngredient1"]
 Ingredient.create(name: ingredient_name)
end
