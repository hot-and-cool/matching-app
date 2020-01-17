class Comment < ApplicationRecord
  belongs_to :to_user, class_name: "User"
  validates :text, presence: true
end
