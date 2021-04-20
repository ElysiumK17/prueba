class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.boolean :featured
      t.text :ingredients
      t.text :steps
      t.datetime :submit_date
      t.string :image_url
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :recipe_type, null: false, foreign_key: true
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
