class Category < ApplicationRecord
  has_many :recipes

  include PgSearch::Model
  multisearchable against: :name

end
