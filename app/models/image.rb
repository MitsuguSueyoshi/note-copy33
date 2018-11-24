class Image < ApplicationRecord
  belongs_to :note
  mount_uploader :image, ImageUploader
end
