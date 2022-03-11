class Property < ApplicationRecord
  has_many_attached :images
  validate :validate_images

  def cover
    images.third    
  end
end
