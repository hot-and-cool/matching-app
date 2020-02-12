class UserImage < ApplicationRecord
  belongs_to :user

  mount_uploader :img_name, ImgNameUploader

  validates :img_name, presence: true
  validates :user_id, presence: true
end
