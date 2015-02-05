class Product < ActiveRecord::Base
  belongs_to :category
  #mount_uploader :image, PictureUloader
  mount_uploader :picture, PictureUloader
end
