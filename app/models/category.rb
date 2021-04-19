class Category < ApplicationRecord
  #2-a una categoria puede tener muchas recetas
  has_many :recipes

  #2 -d una categoria puede tener muchos autores
  has_many :authors
end
