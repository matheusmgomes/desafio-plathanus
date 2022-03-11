class Property < ApplicationRecord
  has_many_attached :images
  #validate :validate_images

  def cover
    images.third    
  end
  

private
  def validate_images
    return if images.count > 3 and images.count <= 5

    errors.add(:images, 'You can upload minimum 3 and max 5 images')
  end
end
