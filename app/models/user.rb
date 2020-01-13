class User < ApplicationRecord
  has_many :chat_messages
  has_many :chat_room_users

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  mount_uploader :img_name, ImgNameUploader

  enum sex: { 男: 0, 女: 1 }

  validates :img_name, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :blood_type
  belongs_to_active_hash :education
  belongs_to_active_hash :body
  belongs_to_active_hash :job
  belongs_to_active_hash :income
  belongs_to_active_hash :height
end
