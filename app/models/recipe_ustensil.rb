class RecipeUstensil < ApplicationRecord
  belongs_to :recipe
  belongs_to :ustensil
end
