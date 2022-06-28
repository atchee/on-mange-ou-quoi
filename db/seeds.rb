puts "Cleaning up database..."
Recipe.destroy_all
Category.destroy_all
Level.destroy_all
User.destroy_all
RecipeIngredient.destroy_all
RecipeStep.destroy_all
RecipeUstensil.destroy_all
Ingredient.destroy_all
Measurement.destroy_all
Ustensil.destroy_all
puts "Database cleaned"


category_list = [
  "Appetizer",
  "Dessert",
  "Vegetables",
  "Salads",
  "Meat",
  "Cocktail"
]

category_list.each do |name|
  category = Category.create!(name: name)
  p category
  p 'created 1 category'
end

level_list = [
  "Easy",
  "Medium",
  "Complex"
]

level_list.each do |level|
  level = Level.create!(difficulty: level)
  p level
  p 'created 1 level'
end

user_list = [
  { email: 'buzz@planetarydefense.com', password: 'password', password_confirmation: 'password', admin: true },
  { email: 'realmaster@jedi.com', password: 'password', password_confirmation: 'password', admin: true },
  { email: 'spicyatreides@caladan.com', password: 'password', password_confirmation: 'password', admin: false },
  { email: 'ruler@universe.com', password: 'password', password_confirmation: 'password', admin: false }
]

user_list.each do |user|
  user = User.create!(user)
  p user
  p 'created 1 user'
end

ingredient_list = [
  "tomato",
  "pepper",
  "eggplant",
  "zucchini",
  "feta",
  "mozarella",
  "salt",
  "pepper",
  "olive oil",
  "thyme"
]

ingredient_list.each do |name|
  ingredient = Ingredient.create!(name: name)
  p ingredient
  p 'created 1 ingredient'
end

ustensil_list = [
  "bowl",
  "knife",
  "pan",
  "plate",
  "cutting board",
  "another knife"
]

ustensil_list.each do |name|
  ustensil = Ustensil.create!(name: name)
  p ustensil
  p 'created 1 ustensil'
end

measurement_list = [
  { quantity: 100, unit: 'gramme' },
  { quantity: 300, unit: 'milliliters' },
  { quantity: 4, unit: 'unit' },
  { quantity: 1, unit: 'kilogramme' }
]

measurement_list.each do |measure|
  measure = Measurement.create!(measure)
  p measure
  p 'created 1 measure'
end

r_1 = Recipe.new({ title: "Kavurma", duration: "1 hour", description: "Classic eagean dish", category: Category.all.sample, level: Level.all.sample, serving: 4 })
r_1.save!
p 'created 1 recipe'

r_2 = Recipe.new({ title: "Cacik", duration: "30 minutes", description: "Refreshing starter", category: Category.all.sample, level: Level.all.sample, serving: 3 })
r_2.save!
p 'created 1 recipe'


ri_1 = RecipeIngredient.new({ ingredient: Ingredient.all.sample, recipe: Recipe.all.sample, measurement: Measurement.all.sample })
ri_1.save!
p 'created 1 recipe_ingredient'

ri_2 = RecipeIngredient.new({ ingredient: Ingredient.all.sample, recipe: Recipe.all.sample, measurement: Measurement.all.sample })
ri_2.save!
p 'created 1 recipe_ingredient'

ri_3 = RecipeIngredient.new({ ingredient: Ingredient.all.sample, recipe: Recipe.all.sample, measurement: Measurement.all.sample })
ri_3.save!
p 'created 1 recipe_ingredient'

ri_4 = RecipeIngredient.new({ ingredient: Ingredient.all.sample, recipe: Recipe.all.sample, measurement: Measurement.all.sample })
ri_4.save!
p 'created 1 recipe_ingredient'

ri_5 = RecipeIngredient.new({ ingredient: Ingredient.all.sample, recipe: Recipe.all.sample, measurement: Measurement.all.sample })
ri_5.save!
p 'created 1 recipe_ingredient'

ri_6 = RecipeIngredient.new({ ingredient: Ingredient.all.sample, recipe: Recipe.all.sample, measurement: Measurement.all.sample })
ri_6.save!
p 'created 1 recipe_ingredient'

rs_1 = RecipeStep.new({ step: 1, recipe: Recipe.all.sample, description: 'break the eggs' })
rs_1.save!
p 'created 1 recipe_step'

rs_2 = RecipeStep.new({ step: 2, recipe: Recipe.all.sample, description: 'add the feta' })
rs_2.save!
p 'created 1 recipe_step'

rs_3 = RecipeStep.new({ step: 3, recipe: Recipe.all.sample, description: 'cut tomatoes' })
rs_3.save!
p 'created 1 recipe_step'

rs_4 = RecipeStep.new({ step: 4, recipe: Recipe.all.sample, description: 'oil the pan' })
rs_4.save!
p 'created 1 recipe_step'

ru_1 = RecipeUstensil.new({ recipe: Recipe.all.sample, ustensil: Ustensil.all.sample })
ru_1.save!
p 'created 1 recipe_ustensil'

ru_2 = RecipeUstensil.new({ recipe: Recipe.all.sample, ustensil: Ustensil.all.sample })
ru_2.save!
p 'created 1 recipe_ustensil'

ru_3 = RecipeUstensil.new({ recipe: Recipe.all.sample, ustensil: Ustensil.all.sample })
ru_3.save!
p 'created 1 recipe_ustensil'
