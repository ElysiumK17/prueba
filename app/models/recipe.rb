class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :recipe_type
  belongs_to :author

  # Validaciones
  # No dejar grabar nombres repetidos
  validates :name, uniqueness: { message: "No pueden existir dos recetas con el mismo nombre!" }\
  # Todas las validaciones de espacio en blanco en una sola línea.
  validates :name, :ingredients, :steps, :image_url, :category_id, :recipe_type_id, :author_id, presence: true
end
