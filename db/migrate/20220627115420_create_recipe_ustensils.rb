class CreateRecipeUstensils < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_ustensils do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :ustensil, null: false, foreign_key: true

      t.timestamps
    end
  end
end
