class RecipeType < ApplicationRecord
  #2-b un tipo puede tener muchas recetas
  has_many :recipes
  
end
