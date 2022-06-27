class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :level
end
