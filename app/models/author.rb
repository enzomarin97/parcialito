class Author < ApplicationRecord
  #2-c un autor puede tener muchas recetas
  has_many :recipes

  # 2-d un autor tiene una especialidad (pertenece a una category)
  belongs_to :category

  # 3-e Los campos first_name y last_name del autor, no pueden ser dejados en blanco.
  validates :first_name, :presence => true
  validates :last_name, :presence => true

end
