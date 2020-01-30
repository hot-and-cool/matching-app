class Comment < ApplicationRecord
  belongs_to :to_user, class_name: "User"
  belongs_to :from_user, class_name: "User"
  
  validates :text, presence: false
  validates :rate, numericality: {less_than_or_equal_to: 5,greater_than_or_equal_to: 0.5}, presence: true

  

end
