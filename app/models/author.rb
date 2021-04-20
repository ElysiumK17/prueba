class Author < ApplicationRecord
  belongs_to :category
  has_many :recipes

  # Validado en "una línea por campo"
  validates :first_name, presence: true
  validates :last_name, presence: true
end
