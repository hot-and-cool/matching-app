class User < ApplicationRecord
  has_many :chat_messages
  has_many :chat_room_users
  has_many :comments
  has_many :footprints
  
  has_many :user_images, :dependent => :destroy
  accepts_nested_attributes_for :user_images

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  mount_uploader :img_name, ImgNameUploader

  enum sex: { 男: 0, 女: 1 }

  

  validates :password, presence: true
  validates :name, presence: true
  validates :img_name, presence: true
  validates :sex, presence: true
  validates :prefecture_id, presence: true
  validates :blood_type_id, presence: true
  validates :education_id, presence: true
  validates :body_id, presence: true
  validates :job_id, presence: true
  validates :income_id, presence: true
  validates :height_id, presence: true

  def reaction_complete
    Reaction.where(from_user_id: current_user.id, to_user_id: user.id)
  end

  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :blood_type
  belongs_to_active_hash :education
  belongs_to_active_hash :body
  belongs_to_active_hash :job
  belongs_to_active_hash :income
  belongs_to_active_hash :height
end
