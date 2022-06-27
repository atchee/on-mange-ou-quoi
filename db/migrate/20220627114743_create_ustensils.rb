class CreateUstensils < ActiveRecord::Migration[7.0]
  def change
    create_table :ustensils do |t|
      t.string :name

      t.timestamps
    end
  end
end
