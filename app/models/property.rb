class Property < ApplicationRecord
  has_many_attached :images

  def cover
    images.third    
  end
  
end
