class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :duration
      t.string :description
      t.references :category, null: false, foreign_key: true
      t.references :level, null: false, foreign_key: true
      t.integer :serving

      t.timestamps
    end
  end
end
