class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :level
  has_many :recipe_ingredients
  has_many :recipe_steps
  has_many :recipe_ustensils
  has_many :ingredients, through: :recipe_ingredients
  has_many :measurements, through: :recipe_ingredients
  has_many :ustensils, through: :recipe_ustensils
  has_one_attached :photo
end
