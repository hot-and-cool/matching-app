class Footprint < ApplicationRecord
  # 外部キーがnilでも保存可
  belongs_to :visiter,class_name:"User", optional: true
  belongs_to :visited,class_name:"User", optional: true
end
