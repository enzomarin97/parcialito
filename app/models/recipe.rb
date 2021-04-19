class Recipe < ApplicationRecord
  # 2-a una receta pertenece a una categoria
  belongs_to :category

  # 2-b Una receta pertenece a un tipo
  belongs_to :recipe_type

  # 2-c Una receta pertenece a un autor
  belongs_to :author

  #3-a no puede existir una receta sin nombre
  #3-b no puede existir dos recetas con el mismo nombre (debe ser uniqueness)
  validates :name, :presence => true, :uniqueness => true

  #3-c la receta debe tener (existir) una categoria, tipo y autor
  #validates :category, presence => true
  #validates :recipe_type, presence => true
  #validates :author, presence => true

  #3-d Los campos de ingredients, steps e image_url de la receta no pueden ser dejados en blanco.
  validates :ingredients, :presence => true
  validates :steps, :presence => true
  validates :image_url, :presence => true


end
