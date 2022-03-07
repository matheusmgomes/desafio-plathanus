class PropertiesController < ApplicationController
  def index
    @properties = Property.all.with_attached_images
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save!
      redirect_to @property
    end
  end

  def property_params
    params.require(:property).permit(:name, images: [])
  end
end
