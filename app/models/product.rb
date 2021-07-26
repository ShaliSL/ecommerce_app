
class Product < ActiveRecord::Base
    validates_presence_of :name, :price, :quantity, :category
    mount_uploader :image, ProductImageUploader
end
